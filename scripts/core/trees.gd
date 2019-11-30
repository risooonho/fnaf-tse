extends Sprite

export(int) var layer_speed = 200
export(Vector2) var timer_range = Vector2(3, 4)
var timer = Timer.new()

func _ready():
	randomize()
	timer.connect("timeout", self, "_on_check_layer_position")
	_randomize()
	timer.one_shot = false
	timer.autostart = true
	add_child(timer)

func _on_check_layer_position():
	if global_position.x <= -1024:
		global_position.x = 1024
	_randomize()

func _process(delta):
	translate(Vector2(-1, 0) * layer_speed * delta)

func _randomize():
	randomize()
	timer.wait_time = rand_range(timer_range.x, timer_range.y)