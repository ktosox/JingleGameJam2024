extends RigidBody2D

var data : ItemData

func _ready() -> void:
	pass


func unlock():
	$ThingInterface.visible = true
	$DragStarter.visible = true
	pass


func lock():
	$ThingInterface.visible = false
	$DragStarter.visible = false
	pass
