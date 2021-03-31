extends Area2D
var fireballspeed = 200
var direct = -1


func _ready():
	set_process(true)
func _process(delta):
	var speed_x = 0
	var speed_y = 4
	var motion = Vector2(speed_x,speed_y) * fireballspeed
	position = position + motion * delta * direct


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()



func _on_Weapon_body_entered(_body):
	queue_free()
	



