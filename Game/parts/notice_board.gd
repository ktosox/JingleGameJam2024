extends Node2D

@onready var valid_range = [$TopLeft.global_position,$BottomRight.global_position]

func add_notice(notice : RigidBody2D) -> void:
	notice.freeze = true
	notice.global_position.x = randf_range(valid_range[0].x,valid_range[1].x)
	notice.global_position.y = randf_range(valid_range[0].y,valid_range[1].y)
	get_parent().add_child(notice)
	pass
