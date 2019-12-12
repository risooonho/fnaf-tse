extends Node


onready var NewGame = $GUI/Control/NewGame
onready var About = $GUI/Control/About
onready var Quit = $GUI/Control/Quit


var new_game_target = "res://maps/forest/LeftForest.tscn"


func _ready():
	Events.emit_signal("select", NewGame)


func _on_NewGame_pressed():
	Events.emit_signal("loading_requested", new_game_target)


func _on_About_pressed():
	Events.emit_signal("selector_about")


func _on_Quit_pressed():
	Events.emit_signal("selector_quit")


func _on_NewGame_mouse_entered():
	Events.emit_signal("select", NewGame)


func _on_About_mouse_entered():
	Events.emit_signal("select", About)


func _on_Quit_mouse_entered():
	Events.emit_signal("select", Quit)
