extends ColorRect

var open_chute_func : Callable

var burn_object_func : Callable

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	open_chute_func.call()

	return true

func _drop_data(at_position: Vector2, data: Variant) -> void:
	# code that deals with destroying stuff goes here
	
	burn_object_func.call(data.get_parent())
	pass
