extends Node

var fonts = {
	"x8": null,
	"x12": null,
	"x16": null,
	"x20": null,
	"x24": null,
	"x28": null,
	"x32": null,
	"x48": null
}

func _init():
	load_fonts("en")

func load_fonts(language):
	if language == "en":
		fonts.x8 = load("res://fonts/pixel/pixel_8.tres")
		fonts.x12 = load("res://fonts/pixel/pixel_12.tres")
		fonts.x16 = load("res://fonts/pixel/pixel_16.tres")
		fonts.x20 = load("res://fonts/pixel/pixel_20.tres")
		fonts.x24 = load("res://fonts/pixel/pixel_24.tres")
		fonts.x28 = load("res://fonts/pixel/pixel_28.tres")
		fonts.x32 = load("res://fonts/pixel/pixel_32.tres")
		fonts.x48 = load("res://fonts/pixel/pixel_48.tres")
	else:
		fonts.x8 = load("res://fonts/compatible/compatible_8.tres")
		fonts.x12 = load("res://fonts/compatible/compatible_12.tres")
		fonts.x16 = load("res://fonts/compatible/compatible_16.tres")
		fonts.x20 = load("res://fonts/compatible/compatible_20.tres")
		fonts.x24 = load("res://fonts/compatible/compatible_24.tres")
		fonts.x28 = load("res://fonts/compatible/compatible_28.tres")
		fonts.x32 = load("res://fonts/compatible/compatible_32.tres")
		fonts.x48 = load("res://fonts/compatible/compatible_48.tres")