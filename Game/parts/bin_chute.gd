extends Area2D

# needs to have open, close and burn animations
# needs to play open animation when rigidbody is detected
# only when valid item is drag_and_dropped should the burn aniamtion be played
@export var is_open = false

func _ready() -> void:
	$Burny.open_chute_func = Callable(self, "open_chute")
	$Burny.burn_object_func = Callable(self, "burn_object")

func open_chute():
	if !is_open:
		$AnimationPlayer.play("open")
	
	pass
func burn_object(object : Node2D) -> void:
	$AnimationPlayer.play("burn")
	object.queue_free()
	pass


func _on_body_exited(body: Node2D) -> void:
	if get_overlapping_bodies().size() == 0:
		$AnimationPlayer.play("close")
	pass # Replace with function body.


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "burn":
		if get_overlapping_bodies().size() == 0:
			$AnimationPlayer.play("close")
	pass # Replace with function body.
