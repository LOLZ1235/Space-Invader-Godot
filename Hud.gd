extends CanvasLayer

var score = 0


func _on_Enemy_kill():
	score += 1
func _process(_delta):
	$kills.text = String(score)
