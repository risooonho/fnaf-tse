tool
extends Node2D


#func _process(delta):
#	update()


func _draw():
	draw_rect(Rect2(0, 0, 1024, 600), Color.red)


func _finish():
	queue_free()
