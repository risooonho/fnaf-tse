extends Node

var core

const SLOT = []
var slots = 5

var inventory_gui = preload("res://core/inventory_gui.tscn").instance()

func _ready():
	fill_empty(slots)
	
	inventory_gui.root = self
	add_child(inventory_gui)

func fill_empty(slots):
	var i = 0
	while i != slots:
		if i == 0:
			SLOT.clear()
		SLOT.append(0)
		i += 1
	
	if core.is_debug:
		print("inventory filled")
		print(SLOT)