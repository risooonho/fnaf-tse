extends ResourcePreloader


var max_sounds = 8


func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	
	Events.connect("play_audio", self, "play")


func play(path, bus = "Master", volume = 1, ignore_same = false):
	var sound = Sound.new()
	sound.name = path.get_file()
	
	sound.volume_db = linear2db(volume)
	
	if ignore_same:
		if !has_node(sound.name) && get_child_count() < max_sounds:
			add_child(sound)
		else:
			sound = null
			return
	else:
		if get_child_count() < max_sounds:
			add_child(sound)
		else:
			sound = null
			return
	
	var res
	
	if has_resource(path):
		res = get_resource(path)
	else:
		res = load(path)
		add_resource(path, res)
	
	sound.stream = res
	
	sound.play()


class Sound extends AudioStreamPlayer:
	func _init():
		connect("finished", self, "_on_finished")
	
	
	func _on_finished() -> void:
		queue_free()
