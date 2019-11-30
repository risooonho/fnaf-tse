extends Node2D

const VELOCITY = 800

var direction = Vector2(1, 0)
var moving = false

func _process(delta):
	translate(direction * VELOCITY * delta * moving);

func _on_run_timeout():
	moving = true
	$sound.play()

func _on_free_timeout():
	queue_free();