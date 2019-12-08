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
		get_tree().change_scene_to(Loading)
		
		# Just wait loading do the left process...
