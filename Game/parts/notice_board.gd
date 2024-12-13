extends Node2D

@onready var valid_range = [$TopLeft.global_position,$BottomRight.global_position]

var paper_scene = preload("res://systems/items/paper_sheet.tscn")



func add_notice(text : String) -> void:
	var new_notice = paper_scene.instantiate() as Node2D
	new_notice.set_text(text)
	new_notice.freeze = true
	$PaperPlacer.global_position = Vector2(randi_range(valid_range[0].x,valid_range[1].x),randi_range(valid_range[0].y,valid_range[1].y) )
	$PaperPlacer/Arm.add_child(new_notice)
	$PaperPlacer/HandMover.play("place_paper")
	await $PaperPlacer/HandMover.animation_finished
	new_notice.reparent(get_parent())
	$PaperPlacer/HandMover.play("remove_hand")
	pass
