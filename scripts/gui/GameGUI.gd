extends CanvasLayer


var message_object


func _ready():
	set_process_unhandled_input(false)
	
	Events.connect("message_object_requested", self, "_on_message_object_requested")
	Events.connect("message_object_accepted", self, "_on_message_object_accepted")


func _on_message_object_requested(object):
	set_process_unhandled_input(true)
	get_tree().paused = true
	
	message_object = object
	
	print(message_object.message)


func _on_message_object_accepted(object):
	set_process_unhandled_input(false)
	get_tree().paused = false


func _unhandled_input(event):
	if event.is_action_pressed("use"):
		get_tree().set_input_as_handled()
		Events.emit_signal("message_object_accepted", message_object)
