extends Control


func _on_Back_pressed():
	Events.emit_signal("back")
