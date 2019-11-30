extends "res://interface/GameButton/GameButton.gd"

func _ready():
	___button_text.text = tr("LABEL_MENU_OPTIONS")

func _on_Button_mouse_down():
	___menu.place_options()