extends Button


func _ready():
	Events.emit_signal("quit_button_started", self)
	connect("pressed", Events, "quit_pressed")