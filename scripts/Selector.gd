extends Node2D


onready var Particles = $Particles
onready var Line = $Line


var s = 0


func _ready():
	Events.connect("select", self, "select")
	Events.connect("selector_quit", self, "select_quit")
	Particles.emitting = true


func select(button):
	global_position = button.rect_position + (button.rect_size / 2.0)


func select_quit():
	Line.color = Color.red


func _process(delta):
	s += delta
	
	var sine = (sin(s) * 0.25) + 0.75
	
	Line.rect_position.x = -128 * sine
	Line.rect_size.x = 256 * sine
