extends ColorRect

var sticky = false

func _get_drag_data(at_position: Vector2) -> Variant:
	get_parent().freeze = true
	sticky = false
	var new_preview = load("res://experimental/drag_preview.tscn").instantiate() as Control
	new_preview.body = get_parent()
	new_preview.connect("tree_exited",Callable(self,"drag_done"))
	set_drag_preview(new_preview)
	visible = false
	return self


func drag_done() -> void:
	visible = true
	if !sticky:
		get_parent().freeze = false
	pass
