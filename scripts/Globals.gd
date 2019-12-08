extends Node


const LOADING = preload("res://scenes/Loading.tscn")


enum STATES {IDLE, BUSY}
var state = STATES.IDLE


func _ready():
	Events.connect("loading_requested", self, "_on_loading_requested")


func _on_loading_requested(scene_path):
	if state == STATES.IDLE:
		# Lock game state
		state = STATES.BUSY
		
		# Instance a new loading screen
		var Loading = LOADING.instance()
		Loading.path = scene_path
		
		var curr = get_tree().current_scene
		curr.queue_free()
		
		get_tree().root.add_child(Loading)
		
		# Just wait loading do the left process...
		
		var scene_resource = yield(Events, "loading_finished")
		
		Loading.queue_free()
		get_tree().change_scene_to(scene_resource)
		
		# Unlock game state
		state = STATES.IDLE
