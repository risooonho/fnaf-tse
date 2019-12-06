extends Node2D


onready var Particles = $Particles
onready var Line = $Line


var s = 0


func _process(delta):
	s += delta
	
	var sine = (sin(s) * 0.25) + 0.75
	
	Line.rect_position.x = -128 * sine
	Line.rect_size.x = 256 * sine