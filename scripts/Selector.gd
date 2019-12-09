extends Node2D


onready var Particles = $Particles
onready var Line = $Line


var s = 0


var ramp1 = preload("res://assets/resources/ramp/ramp1.tres")
var ramp2 = preload("res://assets/resources/ramp/ramp2.tres")


func _ready():
	Events.connect("select", self, "select")
	Events.connect("selector_quit", self, "select_quit")
	Particles.emitting = true


func select(button):
	global_position = button.rect_position + (button.rect_size / 2.0)


func select_quit():
	Particles.color_ramp = ramp2
	Line.color = Color.red


func _process(delta):
	s += delta
	
	var sine = (sin(s) * 0.25) + 0.75
	
	Line.rect_position.x = -128 * sine
	Line.rect_size.x = 256 * sine
