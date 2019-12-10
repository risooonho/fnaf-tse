extends "res://scripts/entity/Entity.gd"


func _unhandled_input(event):
	if event.is_action_pressed("move_up"):
		direction = Vector2.UP
	elif event.is_action_pressed("move_down"):
		direction = Vector2.DOWN
	elif event.is_action_pressed("move_left"):
		direction = Vector2.LEFT
	elif event.is_action_pressed("move_right"):
		direction = Vector2.RIGHT
	elif event.is_action_released("move_up") or event.is_action_released("move_down") or event.is_action_released("move_left") or event.is_action_released("move_right"):
		direction = Vector2.ZERO
#	elif event.is_action_released("move_down"):
#		pass
#	elif event.is_action_released("move_left"):
#		pass
#	elif event.is_action_released("move_right"):
#		pass
