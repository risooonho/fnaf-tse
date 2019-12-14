extends Area2D


func event():
	pass


func _on_AreaEvent_area_entered(area):
	if area is preload("res://scripts/entity/player/Player.gd"):
		event()
