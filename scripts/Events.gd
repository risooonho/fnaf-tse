extends Node


# Game start/finished signals
signal game_started
signal game_finished


# Menu
signal new_game_button_started(newgame)
signal quit_button_started(quit)

signal new_game_pressed
signal quit_pressed


# Background loading
signal loading_requested(scene_path)