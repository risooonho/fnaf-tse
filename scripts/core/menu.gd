extends Node

var welcome_screen = preload("res://core/welcome_screen.tscn").instance()
var credits = preload("res://core/credits.tscn")

func _enter_tree():
	# Set up welcome screen
	
	$gui.add_child(self.welcome_screen)
	self.welcome_screen.root = self
	
	# Updating
	
	core.game_node.has_menu = true

func _ready():
	
	# Change fonts
	
	$gui/title.add_font_override("font", core.font_settings.fonts.x32)

func enable_gui():
	pass