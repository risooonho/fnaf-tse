extends Node


func _ready():
	Events.emit_signal("game_entered")
	
	prints("Map loaded sucessfully:", name)
