extends Node2D


func turn_left():
	for child in get_children():
		child.get_child(0).play("left")
	pass

func turn_right():
	for child in get_children():
		child.get_child(0).play("right")
	pass
