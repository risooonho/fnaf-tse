extends StaticBody2D

#onready var light: Sprite = $light
#onready var light_timer: Timer = $light_trigger
#onready var light_noise: AudioStreamPlayer2D = $light_noise

func _on_LightTimer_timeout():
	randomize()
	toggle_light_visible()
	if light.visible:
		light_noise.play()
	light_timer.wait_time = rand_range(0.05, 0.2)
	light_timer.start()

func toggle_light_visible() -> void:
	light.visible = !light.visible