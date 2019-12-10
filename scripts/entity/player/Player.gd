extends "res://scripts/entity/Entity.gd"


#func _ready():
#	pass


func _unhandled_input(event):
	if event.is_action_pressed("move_up"):
		pass
	elif event.is_action_pressed("move_down"):
		pass
	elif event.is_action_pressed("move_left"):
		pass
	elif event.is_action_pressed("move_right"):
		pass
	elif event.is_action_released("move_up") or event.is_action_released("move_down") or event.is_action_released("move_left") or event.is_action_released("move_right"):
		direction = Vector2.ZERO
#	elif event.is_action_released("move_down"):
#		pass
#	elif event.is_action_released("move_left"):
#		pass
#	elif event.is_action_released("move_right"):
#		pass
