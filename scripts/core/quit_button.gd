extends "res://interface/GameButton/GameButton.gd"

func _ready():
	___button_text.text = tr("LABEL_MENU_QUIT")

func _on_Button_mouse_down():
	GameSettings._update_settings()
	get_tree().quit()