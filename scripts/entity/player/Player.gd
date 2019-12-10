extends "res://scripts/entity/Entity.gd"


func _unhandled_input(event):
	if event.is_action_pressed("move_up"):
		state = STATES.WALKING
		facing = Vector2.UP
		direction.y -= 1
	elif event.is_action_pressed("move_down"):
		state = STATES.WALKING
		facing = Vector2.DOWN
		direction.y += 1
	elif event.is_action_pressed("move_left"):
		state = STATES.WALKING
		facing = Vector2.LEFT
		direction.x -= 1
	elif event.is_action_pressed("move_right"):
		state = STATES.WALKING
		facing = Vector2.RIGHT
		direction.x += 1
	elif event.is_action_released("move_up") or event.is_action_released("move_down"):
		state = STATES.IDLE
		direction.y = 0
	elif event.is_action_released("move_left") or event.is_action_released("move_right"):
		state = STATES.IDLE
		direction.x = 0
	
	direction = direction.normalized()
#	elif event.is_action_released("move_down"):
#		pass
#	elif event.is_action_released("move_left"):
#		pass
#	elif event.is_action_released("move_right"):
#		pass
