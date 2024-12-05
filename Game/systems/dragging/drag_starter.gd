extends ColorRect
# assumes parent is RigidBody2D
@export var preview_scene : PackedScene

var sticky = false # wether this will fall down once drag ends

func _get_drag_data(at_position: Vector2) -> Variant:
	get_parent().freeze = true
	get_parent().rotation = 0
	sticky = false
	var new_preview = preview_scene.instantiate() as Control
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
