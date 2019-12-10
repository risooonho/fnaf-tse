extends CanvasLayer


var dict = {
	"FPS": [0, Color.white],
	"RAM": [0, Color.white],
	"CORES": [0, Color.white],
	"RES": [0]
}


onready var Text = $Text


func _ready():
	dict.CORES[0] = OS.get_processor_count()
	
	refresh()


func refresh():
	dict.FPS[0] = Performance.get_monitor(Performance.TIME_FPS)
	dict.RAM[0] = stepify(Performance.get_monitor(Performance.MEMORY_STATIC) / 1000000, 0.001)
	dict.RES[0] = Performance.get_monitor(Performance.OBJECT_RESOURCE_COUNT)
	
	if dict.FPS[0] <= 20:
		dict.FPS[1] = Color.red.to_html(false)
	else:
		dict.FPS[1] = Color.white.to_html(false)
	
	dict.RAM[1] = Color.green.linear_interpolate(Color.red, (dict.RAM[0] - 34) / (64 - 34.0)).to_html(false)
	
	render()


func render():
	var pattern = "[color=#%s]FPS: %s[/color]\n[color=#%s]RAM: %s MB[/color]\n[color=#ffffff]CORES: %s\nRESOURCES: %s[/color]"
	Text.bbcode_text = pattern % [dict.FPS[1], str(dict.FPS[0]), str(dict.RAM[1]), str(dict.RAM[0]), str(dict.CORES[0]), str(dict.RES[0])]


func _on_Refresh_timeout():
	refresh()
