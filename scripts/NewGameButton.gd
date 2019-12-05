extends Button


func _ready():
	Events.emit_signal("new_game_button_started", self)
	connect("pressed", Events, "new_game_pressed")