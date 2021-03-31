extends Node2D
onready var timer = $Timer
var x = 0
var y = 1
var b = 0
func _ready():
	timer.set_one_shot(false)
func retry():
	if Input.is_action_pressed("retry"):
		get_tree().change_scene("res://mainscene.tscn")
	if Input.is_action_pressed("escape"):
		get_tree().change_scene("res://Start.tscn")
func _physics_process(_delta):
	retry()

