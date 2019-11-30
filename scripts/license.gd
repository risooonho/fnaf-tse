extends Node

func get_license(license_name):
	var file = File.new()
	
	file.open("res://texts/globals/licenses/" + license_name + ".txt", file.READ)
	
	return file.get_as_text()