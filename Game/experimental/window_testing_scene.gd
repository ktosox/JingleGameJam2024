extends Control


func _on_button_pressed() -> void:
	var new_thing = MeshInstance3D.new()
	new_thing.mesh = BoxMesh.new()
	new_thing.mesh.size = Vector3(0.5+randf(),0.5+randf(),0.5+randf())
	$WindowTo3D.replace_held_object(new_thing)
	pass # Replace with function body.
