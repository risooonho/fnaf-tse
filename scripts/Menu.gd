extends Node


enum STATES {IDLE, BUSY}
var state = STATES.IDLE


func _ready():
	pass


func _on_NewGame_pressed():
	if state == STATES.IDLE:
		pass


func _on_Quit_pressed():
	if state == STATES.IDLE:
		get_tree().quit()