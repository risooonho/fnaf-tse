extends Node2D

func _ready():
	$label.text = str(core.state.player_data.player_name) + " Lv. " + str(core.state.player_data.player_level) + "\nXP: " + str(core.state.player_data.player_xp)