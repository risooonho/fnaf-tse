extends KinematicBody2D

class_name Actor

const NULL_VEL = 0
const NULL_DIR = Vector2()

enum STATES { IDLE, WALKING,  }
var state = STATES.IDLE

var direction = Vector2()
var velocity = 200

var is_able_to_move = true

func _physics_process(delta):
	move_and_slide(direction * is_able_to_move * velocity)

func _input(event):
	if direction.y == -1:
		set_motion_draw(0)
	elif direction.y == 1:
		set_motion_draw(1)
	elif direction.x == -1:
		set_motion_draw(2)
	elif direction.x == 1:
		set_motion_draw(3)

func set_motion_draw(direction):
	match direction:
		0:
			$actor_sprite.animation = "walk_up"
			state = STATES.WALKING
		1:
			$actor_sprite.animation = "walk_down"
			state = STATES.WALKING
		2:
			$actor_sprite.animation = "walk_right"
			$actor_sprite.scale.x = -0.1
			state = STATES.WALKING;
		3:
			$actor_sprite.animation = "walk_right"
			$actor_sprite.scale.x = 0.1
			state = STATES.WALKING

func toggle_able_to_move():
	is_able_to_move = !is_able_to_move