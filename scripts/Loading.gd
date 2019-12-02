extends Node


var thread = Thread.new()


var total = 0

const DELAY = 250


onready var Label = $Label


func _ready():
	thread.start(self, "_thread_load")


func _thread_load(userdata):
	var ril = ResourceLoader.load_interactive("res://scenes/Game.tscn")
	assert(ril)
	
	var res
	
	while true:
		call_deferred("refresh", ril.get_stage(), ril.get_stage_count())
		
		OS.delay_msec(DELAY)
		
		var err = ril.poll()
		
		if err == ERR_FILE_EOF:
			res = ril.get_resource()
			break
		elif err != OK:
			print("There was an error loading")
			break
	
	call_deferred("_thread_done", res)


func _thread_done(resource):
	assert(resource)
	
	thread.wait_to_finish()
	
	get_tree().call_deferred("change_scene_to", resource)


func refresh(progress, total):
	Label.text = "Loading... " + str(round((progress / float(total)) * 100)) + "%"
