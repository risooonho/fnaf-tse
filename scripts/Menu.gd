extends Node


enum STATES {IDLE, BUSY}
var state = STATES.IDLE


onready var NewGame = $GUI/Control/NewGame
onready var Quit = $GUI/Control/Quit


func _ready():
	pass


func _on_NewGame_pressed():
	if state == STATES.IDLE:
		pass


func _on_Quit_pressed():
	if state == STATES.IDLE:
		get_tree().quit()


func _on_NewGame_mouse_entered():
	Events.emit_signal("select", NewGame)


func _on_Quit_mouse_entered():
	Events.emit_signal("select", Quit)
