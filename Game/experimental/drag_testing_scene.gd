extends Node2D


func _on_button_pressed() -> void:
	$NoticeBoard.add_notice(load("res://experimental/drag_body.tscn").instantiate())
	pass # Replace with function body.
