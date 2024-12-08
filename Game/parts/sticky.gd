extends ColorRect


func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	if data.is_in_group("Paper"):
		return true
	return false

func _drop_data(at_position: Vector2, data: Variant) -> void:
	data.sticky = true
