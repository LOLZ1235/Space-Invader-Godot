extends CanvasLayer

var kills = 0


func _ready():
	$Label2.text = String(kills) 





func _on_Enemy_kill():
	kills = kills + 1



