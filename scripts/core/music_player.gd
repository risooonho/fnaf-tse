extends AudioStreamPlayer

onready var trigger: Timer = $trigger;

func _ready():
	play();

func _on_trigger_timeout():
	if not playing:
		stream = AudioStream.new()
		play();