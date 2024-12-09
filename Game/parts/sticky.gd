extends ColorRect

@export var sticks_to_group = "Paper"

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	if data.is_in_group(sticks_to_group):
		return true
	return false

func _drop_data(at_position: Vector2, data: Variant) -> void:
	data.sticky = true
