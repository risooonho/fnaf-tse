extends Node


const MENU = preload("res://scenes/Menu.tscn")
const LOADING = preload("res://scenes/Loading.tscn")
const ABOUT = preload("res://scenes/About.tscn")


enum STATES {IDLE, BUSY}
var state = STATES.IDLE


var is_in_game = false


var Player


func _ready():
	Events.connect("loading_requested", self, "_on_loading_requested")
	Events.connect("selector_about", self, "_on_about_pressed")
	Events.connect("back", self, "_on_back_pressed")
	Events.connect("selector_quit", self, "_on_quit_pressed")
	
	Events.connect("game_entered", self, "_on_game_entered")
	Events.connect("game_exited", self, "_on_game_exited")
	
	Events.connect("player_started", self, "_on_player_started")


func _on_player_started(player):
	Player = player


func _on_game_entered():
	is_in_game = true


func _on_game_exited():
	is_in_game = false


func _on_quit_pressed():
	get_tree().quit()


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


func _on_about_pressed():
	get_tree().change_scene_to(ABOUT)


func _on_back_pressed():
	get_tree().change_scene_to(MENU)


func _input(event):
	if event.is_action_pressed("dev_options"):
		if has_node("Debug"):
			get_node("Debug").queue_free()
		else:
			var Debug = preload("res://scenes/Debug.tscn").instance()
			add_child(Debug)
