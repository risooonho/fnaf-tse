extends CanvasLayer

var hud_hint: PackedScene = preload("res://interface/HUDHint.tscn")

func _add_hint(text_: String) -> void:
	if not AutoLoad.showing_hint:
		var hint: Node = hud_hint.instance()
		hint.text = text_
		hint.global_position = Vector2(512, 300)
		add_child(hint)