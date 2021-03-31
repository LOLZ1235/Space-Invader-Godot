extends KinematicBody2D
export var enemy_speed = 200
export var enemy_speed_down = 1500
export var enemymotion = Vector2()
var Enemydirection = 1
signal kill
signal killed
var oppsitedirect = -1
onready var sprite = get_node("Sprite")
onready var timer = $Timer
func _ready():
	set_physics_process(true) 
	timer.set_one_shot(false)

func _physics_process(_delta_):
	enemymotion = Vector2()
	if $RayCast2D2.is_colliding():
		Enemydirection = Enemydirection * oppsitedirect
		enemymotion.y = enemy_speed_down
		
	if $RayCast2D3.is_colliding():
		Enemydirection = Enemydirection * Enemydirection
		enemymotion.y = enemy_speed_down
		
		
	enemymotion.x = Enemydirection * enemy_speed
	enemymotion = move_and_slide(enemymotion)


func restart_timer():
	timer.set_wait_time(1.53)
	timer.set_one_shot(true)
	timer.start()



func _on_Area2D_area_shape_entered(_area_id, _area, _area_shape, _self_shape):
	emit_signal("kill")
	emit_signal("killed")
	if timer.is_stopped():
			$Blast.play()
			restart_timer()

func _on_Timer_timeout():
	$Blast.stop()
	timer.set_one_shot(false)


