extends Node2D

var root

var step = 0

var license = preload("res://scripts/license.gd").new()

var licenses = {}

func _ready():
	$container/label.add_font_override("font", core.font_settings.fonts.x16)
	
	licenses.mit = license.get_license("MIT")
	licenses.godot = license.get_license("GODOT")
	licenses.freetype = license.get_license("FREETYPE")
	
	license = null
	
	$anim.play("show")

func _input(event):
	if event.is_action_pressed("use"):
		if step == 0:
			$license.add_font_override("font", core.font_settings.fonts.x12)
			$container.queue_free()
			$license.visible = true
			$license.text = licenses.mit
		elif step == 1:
			$license.text = licenses.godot
		elif step == 2:
			$license.text = licenses.freetype
		else:
			set_process_input(false)
			$anim.play("hide")
		
		step += 1

func _draw():
	draw_rect(Rect2(0, 0, 1024, 768), Color(0, 0, 0, 0.75))

func _exit_tree() -> void:
	root.enable_gui()

func _on_audio_finished():
	$audio.queue_free()