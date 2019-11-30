extends Node2D

export(String) var text = "Hint"
export(int) var duration = 5

onready var anim = $"AnimationPlayer"

func _ready():
	AutoLoad.showing_hint = true
	$HintText.text = text
	anim.playback_speed = 1.0 / duration
	anim.play("Hide")

func _quit():
	AutoLoad.showing_hint = false