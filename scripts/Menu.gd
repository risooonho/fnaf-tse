extends Node


var NewGame
var Quit


func _ready():
	Events.connect("new_game_button_started", self, "_on_new_game_button_started")
	Events.connect("quit_button_started", self, "_on_quit_button_started")
	Events.connect("new_game_pressed", self, "_on_new_game_pressed")
	Events.connect("quit_pressed", self, "_on_quit_pressed")


func _on_new_game_button_started(newgame):
	NewGame = newgame
	
	NewGame.text = tr("LABEL_NEWGAME")


func _on_quit_button_started(quit):
	Quit = quit
	
	Quit.text = tr("LABEL_QUIT")


func _on_new_game_pressed():
	pass


func _on_quit_pressed():
	get_tree().quit()