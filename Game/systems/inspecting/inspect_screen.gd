extends CanvasLayer

func _ready() -> void:
	_on_close_pressed()

func show_object(object : Node3D) -> void:
	visible = true
	$CenterContainer/WindowTo3D.replace_held_object(object)
	$CenterContainer/WindowTo3D.visible = true

func show_manual() -> void:
	visible = true
	$CenterContainer/Manual.visible = true


func _on_close_pressed() -> void:
	visible = false
	$CenterContainer/WindowTo3D.visible = false
	$CenterContainer/Manual.visible = false
