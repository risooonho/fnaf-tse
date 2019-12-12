extends Node


# Background loading
signal loading_requested(scene_path)
signal loading_finished(scene_resource)


# Menu
signal select(button)

signal selector_about
signal selector_quit

signal back


# In game state
signal game_entered
signal game_exited


# Message objects
signal message_object_requested(object)


# Player
signal player_started(player)

signal enable_player_control
signal disable_player_control
