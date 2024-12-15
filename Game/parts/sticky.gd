extends ColorRect

signal item_placed (item : RigidBody2D)

@export var sticks_to_group = "Paper"

@export var can_accept = true

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	if data.is_in_group(sticks_to_group):
		return can_accept
	return false

func _drop_data(at_position: Vector2, data: Variant) -> void:
	data.sticky = true
	emit_signal("item_placed",data.get_parent())
