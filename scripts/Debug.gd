extends CanvasLayer


var dict = {
	"FPS": [0, Color.white],
	"RAM": [0, Color.white],
	"CORES": [0, Color.white]
}


onready var Text = $Text


func _ready():
	refresh()


func refresh():
	dict.FPS[0] = Performance.get_monitor(Performance.TIME_FPS)
	dict.RAM[0] = Performance.get_monitor(Performance.MEMORY_STATIC) + Performance.get_monitor(Performance.MEMORY_DYNAMIC)
	
	if dict.FPS[0] <= 15:
		dict.FPS[1] = Color.red.to_html(false)
	else:
		dict.FPS[1] = Color.white.to_html(false)
	
	if dict.RAM[0] >= 10:
		dict.RAM[1] = Color.red.to_html(false)
	else:
		dict.RAM[1] = Color.white.to_html(false)
	
	render()


func render():
	var pattern = "[color=%s]%s: %s[/color]\n[color=%s]%s: %s\n[/color]"
	Text.bbcode_text = pattern % [dict.FPS[1], str(dict.FPS[0]), str(dict.RAM), str(dict.CORES)]


func _on_Refresh_timeout():
	refresh()
