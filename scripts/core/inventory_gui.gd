extends Node2D

var root

var sleep_enabled = true
var sleeping = false

var old_player_position = Vector2()
var new_player_position = Vector2()

func _ready():
	pass

func update_gui():
	pass

func _on_timer_timeout():
	if sleep_enabled:
		$animation.play("hide")

func set_sleep_state(sleep):
	sleeping = sleep