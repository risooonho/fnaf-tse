extends "res://scripts/entity/Entity.gd"


func _ready():
	Events.connect("message_object_accepted", self, "_on_message_object_accepted")


func _on_message_object_accepted(object):
	direction = Vector2.ZERO


func _unhandled_input(event):
	if event.is_action_pressed("move_up"):
		state = STATES.WALKING
		facing = Vector2.UP
		direction.y = -1
	elif event.is_action_pressed("move_down"):
		state = STATES.WALKING
		facing = Vector2.DOWN
		direction.y = 1
	elif event.is_action_pressed("move_left"):
		state = STATES.WALKING
		facing = Vector2.LEFT
		direction.x = -1
	elif event.is_action_pressed("move_right"):
		state = STATES.WALKING
		facing = Vector2.RIGHT
		direction.x = 1
	elif event.is_action_pressed("use"):
		if collider is preload("res://scripts/objects/message_object/MessageObject.gd"):
			Events.emit_signal("message_object_requested", collider)
	elif event.is_action_released("move_up") or event.is_action_released("move_down"):
		state = STATES.IDLE
		direction.y = 0
	elif event.is_action_released("move_left") or event.is_action_released("move_right"):
		state = STATES.IDLE
		direction.x = 0
