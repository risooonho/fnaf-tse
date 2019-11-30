extends "res://interface/GameButton/GameButton.gd"

# TODO: NEEDS TO BE EDITED

func _ready():
	button_text.text = tr("LABEL_MENU_EXTRAS")

func _on_Button_mouse_down():
	menu.place_extras()