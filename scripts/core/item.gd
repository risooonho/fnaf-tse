extends Node

class_name Item

var type: String = "" setget set_item_type, get_item_type;

func set_item_type(type: String) -> void:
	item_type = type;

func get_item_type() -> String:
	return item_type;