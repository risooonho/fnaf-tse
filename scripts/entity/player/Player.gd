extends "res://scripts/entity/Entity.gd"


func _unhandled_input(event):
	if event.is_action_pressed("move_up"):
		state = STATES.WALKING
		facing = Vector2.UP
		direction = facing
	elif event.is_action_pressed("move_down"):
		state = STATES.WALKING
		facing = Vector2.DOWN
		direction = facing
	elif event.is_action_pressed("move_left"):
		state = STATES.WALKING
		facing = Vector2.LEFT
		direction = facing
	elif event.is_action_pressed("move_right"):
		state = STATES.WALKING
		facing = Vector2.RIGHT
		direction = facing
	elif event.is_action_released("move_up") or event.is_action_released("move_down") or event.is_action_released("move_left") or event.is_action_released("move_right"):
		if state == STATES.WALKING:
			state = STATES.IDLE
			direction = Vector2.ZERO
#	elif event.is_action_released("move_down"):
#		pass
#	elif event.is_action_released("move_left"):
#		pass
#	elif event.is_action_released("move_right"):
#		pass
