extends Node


# Game start/finished signals
signal game_started
signal game_finished


# Background loading
signal loading_requested(scene_path)


# Menu
signal select(button)
