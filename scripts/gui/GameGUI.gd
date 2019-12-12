extends CanvasLayer


var message_object

var DialogueMessage = preload("res://scenes/DialogueMessage.tscn")
var Message


func _ready():
	set_process_unhandled_input(false)
	
	Events.connect("message_object_requested", self, "_on_message_object_requested")
	Events.connect("message_object_accepted", self, "_on_message_object_accepted")


func _on_message_object_requested(object):
	Events.disconnect("message_object_requested", self, "_on_message_object_requested")
	
	get_tree().paused = true
	
	message_object = object
	
	Message = DialogueMessage.instance()
	add_child(Message)
	
	Message.reset()
	Message.buff_text(message_object.message, 0.1)
	Message.set_state(Message.STATE_OUTPUT)
	
	yield(Message, "buff_end")
	set_process_unhandled_input(true)
	Events.connect("message_object_requested", self, "_on_message_object_requested")


func _on_message_object_accepted(object):
	Message.get_node("Anim").play("hide")
	set_process_unhandled_input(false)
	get_tree().paused = false


func _unhandled_input(event):
	if event.is_action_pressed("use"):
		get_tree().set_input_as_handled()
		Events.emit_signal("message_object_accepted", message_object)
