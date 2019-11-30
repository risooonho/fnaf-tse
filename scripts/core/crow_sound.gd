extends AudioStreamPlayer

# TODO: NEEDS TO BE EDITED (AND ORGANIZATED)

export(Vector2) var var_time = Vector2(15, 35)
export(float) var var_pitch_scale = 0.1
export(float) var var_pan = 0.5
export(Vector2) var var_volume = Vector2(-25, -32)

func _on_Timer_timeout():
	var idx = AudioServer.get_bus_index("Crow")
	var panner_effect = AudioServer.get_bus_effect(idx, 0)
	randomize()
	pitch_scale = rand_range(1 - var_pitch_scale, 1 + var_pitch_scale)
	$Timer.wait_time = rand_range(var_time.x, var_time.y)
	volume_db = rand_range(var_volume.x, var_volume.y)
	panner_effect.pan = rand_range(-var_pan, var_pan)
	play()
	$Timer.start()