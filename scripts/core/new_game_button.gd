extends "res://interface/GameButton/GameButton.gd"

func _ready():
	___button_text.text = tr("LABEL_MENU_NEWGAME")

func _on_Button_mouse_down():
	___menu._new_game()