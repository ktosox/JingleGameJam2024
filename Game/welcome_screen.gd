extends CanvasLayer

func _ready() -> void:
	if ProgressTracker.first_launch:
		play_intro()

func play_intro():
	$Intro.visible = true
	
	$Intro.play()
	pass


func _on_go_up_pressed() -> void:
	$CameraMover.play("up")
	pass # Replace with function body.


func _on_go_down_pressed() -> void:
	$CameraMover.play("down")
	pass # Replace with function body.


func _on_go_back_pressed() -> void:
	$CameraMover.play("center")
	pass # Replace with function body.
