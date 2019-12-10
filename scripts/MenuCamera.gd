extends Camera2D


func _process(delta):
	translate(Vector2.RIGHT * 100 * delta)
