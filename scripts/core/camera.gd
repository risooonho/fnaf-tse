extends Camera2D

var object: Node2D

func _ready():
	object = autoload.references.player;

func _process(delta):
	global_position = object.global_position;