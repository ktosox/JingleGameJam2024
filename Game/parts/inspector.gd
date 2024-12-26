extends Node2D

signal thing_inspected (thing)

var currently_held_thing : RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _on_sticky_item_placed(item: RigidBody2D) -> void:
	currently_held_thing = item
	$InspectionButton.disabled = false
	$Sticky.can_accept = false
	$Label.text = currently_held_thing.name
	pass # Replace with function body.


func _on_inspection_button_pressed() -> void:
	if currently_held_thing != null:
		emit_signal("thing_inspected",currently_held_thing)
		print("thing_inspected")
	pass # Replace with function body.


func _on_body_exited(body: Node2D) -> void:
	if body == currently_held_thing:
		currently_held_thing = null
		$Sticky.can_accept = true
		$InspectionButton.disabled = true
		$Label.text = ""
	pass # Replace with function body.
