extends SubViewportContainer

var mouse_tracked = false

var last_mouse_pos : Vector2

func _process(delta: float) -> void:
	if mouse_tracked:
		
		var new_mouse_pos = $SubViewport.get_mouse_position()
		var difference = new_mouse_pos - last_mouse_pos
		$SubViewport/World/ObjectHolder.rotate_x(difference.y * delta)
		$SubViewport/World/ObjectHolder.rotate_y(difference.x * delta)

		last_mouse_pos = new_mouse_pos
		pass



func _on_gui_input(event: InputEvent) -> void:
	if event.is_class("InputEventMouseButton"):
		last_mouse_pos = $SubViewport.get_mouse_position()
		mouse_tracked = event.is_pressed()
	pass # Replace with function body.


func _on_mouse_exited() -> void:
	
	mouse_tracked = false
	pass # Replace with function body.
