extends KinematicBody2D
const paralyze = preload("Weapon.tscn")
const par = 100
var speed  = 250
onready var timer = $Timer
var vel = Vector2()
onready var sprite = get_node("Sprite")
onready var fires = ("Fire") 

func _physics_process(_delta_):
	get_input()
	vel = move_and_slide(vel)
	

func _ready():
	set_process(true)
	timer.set_one_shot(false)
func _process(_delta):
	var par_y = 0
	position = position + Vector2(0,par_y) 
	if Input.is_action_pressed("Fire"):
		if timer.is_stopped():
			$Fire.play()
			_createfireball()
			restart_timer()
 
func _createfireball() :
	var fireball = paralyze.instance()
	fireball.position = Vector2(position.x,position.y - 50)
	get_parent().add_child(fireball)
	
	
func restart_timer():
	timer.set_wait_time(1.13)
	timer.set_one_shot(true)
	timer.start()
	
func _on_Timer_timeout():
	$Fire.stop()
	timer.set_one_shot(false)
 
func get_input():
	vel = Vector2()
	if Input.is_action_pressed("move_left"):
		vel.x -= 1
	if Input.is_action_pressed("move_right"):
		vel.x += 1
	if Input.is_action_pressed("move_up"):
		vel.y  -= 1
	if Input.is_action_pressed("move_down"):
		vel.y  += 1
	vel = vel.normalized() * speed





func _on_Area2D_body_entered(_body):
	get_tree().change_scene("res://End.tscn")
