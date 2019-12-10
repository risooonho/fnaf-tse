extends CanvasLayer


var dict = {
	"FPS": [0, Color.white],
	"RAM": [0, Color.white],
	"CORES": [0, Color.white]
}


onready var Text = $Text


func _ready():
	dict.CORES[0] = OS.get_processor_count()
	
	refresh()


func refresh():
	dict.FPS[0] = Performance.get_monitor(Performance.TIME_FPS)
	dict.RAM[0] = stepify(Performance.get_monitor(Performance.MEMORY_STATIC) / 1000000, 0.01)
	
	if dict.FPS[0] <= 20:
		dict.FPS[1] = Color.red.to_html(false)
	else:
		dict.FPS[1] = Color.white.to_html(false)
	
	if dict.RAM[0] >= 10:
		dict.RAM[1] = Color.red.to_html(false)
	else:
		dict.RAM[1] = Color.white.to_html(false)
	
	render()


func render():
	var pattern = "[color=#%s]FPS: %s[/color]\n[color=#%s]RAM: %s MB[/color]\nCORES: %s"
	Text.bbcode_text = pattern % [dict.FPS[1], str(dict.FPS[0]), str(dict.RAM[1]), str(dict.RAM[0]), str(dict.CORES[0])]


func _on_Refresh_timeout():
	refresh()
