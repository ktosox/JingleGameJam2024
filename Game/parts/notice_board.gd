extends Node2D

@onready var valid_range = [$TopLeft.global_position,$BottomRight.global_position]

var paper_scene = preload("res://systems/items/paper_sheet.tscn")



func add_notice(text : String) -> void:
	var new_notice = paper_scene.instantiate()
	new_notice.set_text(text)
	new_notice.freeze = true
	new_notice.global_position.x = randf_range(valid_range[0].x,valid_range[1].x)
	new_notice.global_position.y = randf_range(valid_range[0].y,valid_range[1].y)
	get_parent().add_child(new_notice)
	pass
