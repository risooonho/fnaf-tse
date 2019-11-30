extends Node

func get_screen_middle():
	var x = (OS.window_width * 0.5) - (OS.window_width * 0.5)
	var y = (OS.window_height * 0.5) - (OS.window_height * 0.5)

	return Vector2(x, y)