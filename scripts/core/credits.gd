extends Node

onready var credits_text_label: Label = $"CreditsNode2D/CreditsText"

func _ready():
	var file: File = File.new()
	#warning-ignore:return_value_discarded
	file.open("res://texts/used/credits.txt", File.READ)
	credits_text_label.text = file.get_as_text()
	file.close()

func _input(event):
	if event.is_action_pressed("ESCAPE"):
		back_to_menu()

func back_to_menu():
	get_tree().change_scene("res://interface/Menu.tscn")