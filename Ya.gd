extends Node2D


func _process(_delta):
	if Input.is_action_pressed("yes"):
		get_tree().change_scene("res://mainscene.tscn")
	elif Input.is_action_pressed("no"):
		get_tree().change_scene("res://Turtorial.tscn")
