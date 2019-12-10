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
			Sprite.animation = "walk_up"
			Sprite.scale.x = 1
		Vector2.DOWN:
			Sprite.animation = "walk_down"
			Sprite.scale.x = 1
		Vector2.LEFT:
			Sprite.animation = "walk_side"
			Sprite.scale.x = -1
		Vector2.RIGHT:
			Sprite.animation = "walk_side"
			Sprite.scale.x = 1
