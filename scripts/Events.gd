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
