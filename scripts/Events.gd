extends Node


# Game start/finished signals
signal game_started
signal game_finished


# Background loading
signal loading_requested(scene_path)
signal loading_finished(scene_resource)


# Menu
signal select(button)

signal selector_about
signal selector_quit
