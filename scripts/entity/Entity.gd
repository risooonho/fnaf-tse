extends Area2D


var speed = 10
var direction = Vector2.ZERO


#func _ready():
#	pass


func _process(delta):
	translate(direction * speed * delta)
