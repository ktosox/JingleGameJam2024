extends ColorRect


func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true

func _drop_data(at_position: Vector2, data: Variant) -> void:
	# code that deals with destroying stuff goes here
	data.get_parent().queue_free()
	pass
