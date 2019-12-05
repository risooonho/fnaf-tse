extends Button


func _ready():
	Events.emit_signal("new_game_button_started", self)