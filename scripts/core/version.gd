extends Node2D

func _ready():
	$"VersionText".text = tr("LABEL_MENU_VERSION") + " " + AutoLoad.GAME_VERSION