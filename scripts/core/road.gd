extends Sprite

var Speed = 800

func _process(delta):
	if global_position.x > -1024:
		translate(Vector2(-1, 0) * Speed * delta)
	else:
		global_position = Vector2(0, 0)