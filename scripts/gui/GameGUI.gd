extends CanvasLayer


var busy = false

var message_object


func _ready():
	set_process_input(false)
	
	Events.connect("message_object_requested", self, "_on_message_object_requested")
	Events.connect("message_object_accepted", self, "_on_message_object_accepted")


func _on_message_object_requested(object):
	if !busy:
		set_process_input(true)
		get_tree().paused = true
		
		message_object = object


func _on_message_object_accepted(object):
	if busy:
		get_tree().paused = false
		set_process_input(false)


func _input(event):
	if event.is_action_pressed("use"):
		Events.emit_signal("message_object_accepted", message_object)
