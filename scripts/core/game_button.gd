extends Node2D

onready var ___menu: Node = $"/root/Menu"
onready var ___button: Button = $GameButton
onready var ___button_text: Label = $ButtonText
onready var ___bar: Node2D = $GameButtonBar

var __active = false
var __colors = {"LIGHT": Color.white, "MID_DARK": Color(0.5, 0.5, 0.5), "DARK": Color(0.2, 0.2, 0.2)}

func _ready():
	modulate = __colors.MID_DARK
	
	if AutoLoad.welcome_shown:
		__active = true
	___button.disabled = !__active

func _enable():
	__active = true
	___button.disabled = false

func _on_Button_mouse_down():
	if __active:
		modulate = __colors.DARK

func _on_Button_mouse_up():
	if __active:
		modulate = __colors.MID_DARK

func _on_GameButton_mouse_entered():
	if __active:
		modulate = __colors.LIGHT
		get_tree().call_group("focus", "_focus_enter")
		___bar.visible = true

func _on_GameButton_mouse_exited():
	if __active:
		modulate = __colors.MID_DARK
		get_tree().call_group("focus", "_focus_exit")
		___bar.visible = false