extends Area2D


var speed = 10
var direction = Vector2.ZERO

var facing = Vector2.DOWN


onready var Sprite = $Sprite


enum STATES {IDLE, WALKING}
var state = STATES.IDLE


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
		Vector2.ZERO:
			match facing:
				Vector2.UP:
					Sprite.animation = "idle_up"
					Sprite.scale.x = 1
				Vector2.DOWN:
					Sprite.animation = "idle_down"
					Sprite.scale.x = 1
				Vector2.LEFT:
					Sprite.animation = "idle_side"
					Sprite.scale.x = -1
				Vector2.RIGHT:
					Sprite.animation = "idle_side"
					Sprite.scale.x = 1
