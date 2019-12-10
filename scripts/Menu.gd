extends Node


onready var NewGame = $GUI/Control/NewGame
onready var Quit = $GUI/Control/Quit


func _ready():
	Events.emit_signal("select", NewGame)


func _on_NewGame_pressed():
	Events.emit_signal("loading_requested", "res://scenes/map/Map.tscn")


func _on_Quit_pressed():
	Events.emit_signal("selector_quit")
		
	var timer = get_tree().create_timer(1)
	yield(timer, "timeout")
	
	get_tree().quit()


func _on_NewGame_mouse_entered():
	Events.emit_signal("select", NewGame)


func _on_Quit_mouse_entered():
	Events.emit_signal("select", Quit)
