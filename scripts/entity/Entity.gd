extends Area2D


var speed = 10
var direction = Vector2.DOWN


onready var Sprite = $Sprite


#func _ready():
#	pass


func _process(delta):
	translate(direction * speed * delta)
	
	match direction:
		Vector2.UP:
			pass
		Vector2.DOWN:
			pass
		Vector2.LEFT:
			pass
		Vector2.RIGHT:
			pass
