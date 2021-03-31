extends Node2D
#var scre = int(get_node("/root/SaveSystem").score)
func _process(_delta):
	
	#print(scre)
	if Input.is_action_pressed("ui_start"):
		get_tree().change_scene("res://Ya.tscn")
	elif Input.is_action_pressed("tutorial"):
		get_tree().change_scene("res://Turtorial.tscn")

