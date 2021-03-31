extends Node2D





func _on_Area2D_body_entered(_body):
	get_tree().change_scene("res://End.tscn")
func spawn():
	 randomize()
	 var pos = Vector2()
	 pos.x = rand_range(0+50,720-50)
	 pos.y = rand_range(0+50,1280-1100)
	 $Enemy.set_position(pos)





func spawn2():
	 randomize()
	 var pos = Vector2()
	 pos.x = rand_range(0+50,720-50)
	 pos.y = rand_range(0+50,1280-1100)
	 $Enemy2.set_position(pos)








func spawn3():
	 randomize()
	 var pos = Vector2()
	 pos.x = rand_range(0+50,720-50)
	 pos.y = rand_range(0+50,1280-1000)
	 $Enemy3.set_position(pos)

func _on_Enemy_killed():
	spawn()
	


func spawn4():
	 randomize()
	 var pos = Vector2()
	 pos.x = rand_range(0+50,720-50)
	 pos.y = rand_range(0+50,1280-1100)
	 $Enemy4.set_position(pos)





func spawn5():
	 randomize()
	 var pos = Vector2()
	 pos.x = rand_range(0+50,720-50)
	 pos.y = rand_range(0+50,1280-1100)
	 $Enemy5.set_position(pos)





func spawn6():
	 randomize()
	 var pos = Vector2()
	 pos.x = rand_range(0+50,720-50)
	 pos.y = rand_range(0+50,1280-1100)
	 $Enemy6.set_position(pos)



func _on_Enemy2_kill():
	spawn2()


func _on_Enemy3_killed():
	spawn3()


func _on_Enemy4_killed():
	spawn4()


func _on_Enemy5_killed():
	spawn5()


func _on_Enemy6_killed():
	spawn6()
