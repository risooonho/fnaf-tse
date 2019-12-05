extends Control


onready var NewGame = $HBox/NewGame
onready var Quit = $HBox/Quit


func _ready():
	_translate()


func _translate():
	NewGame.text = tr("LABEL_NEWGAME")
	Quit.text = tr("LABEL_QUIT")