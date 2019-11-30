extends "res://core/actor/actor.gd"

class_name ControllableActor

func _input(event):
	if is_able_to_move():
		if event.is_action_pressed("MOVE_UP"):
			direction.y = -1;
			set_state(STATES.WALKING);
			actor_sprite.animation = "walk_up";
		elif event.is_action_pressed("MOVE_DOWN"):
			direction.y = 1;
			set_state(STATES.WALKING);
			actor_sprite.animation = "walk_down";
		elif event.is_action_pressed("MOVE_LEFT"):
			direction.x = -1;
			set_state(STATES.WALKING);
			actor_sprite.animation = "walk_right";
			actor_sprite.scale.x = -0.1;
		elif event.is_action_pressed("MOVE_RIGHT"):
			direction.x = 1;
			set_state(STATES.WALKING);
			actor_sprite.animation = "walk_right";
			actor_sprite.scale.x = 0.1;
		elif event.is_action_released("MOVE_UP"):
			direction.y = 0;
			set_state(STATES.IDLE);
			actor_sprite.animation = "up"
		elif event.is_action_released("MOVE_DOWN"):
			direction.y = 0;
			set_state(STATES.IDLE);
			actor_sprite.animation = "down";
		elif event.is_action_released("MOVE_LEFT"):
			direction.x = 0;
			set_state(STATES.IDLE);
			actor_sprite.animation = "right";
			actor_sprite.scale.x = -0.1;
		elif event.is_action_released("MOVE_RIGHT"):
			direction.x = 0;
			set_state(STATES.IDLE);
			actor_sprite.animation = "right";
			actor_sprite.scale.x = 0.1;
	else:
		actor_sprite.animation = "right";
		actor_sprite.scale.x = 0.1;
		set_direction(NULL_DIR);
		set_velocity(NULL_VEL);
		state = STATES.IDLE;