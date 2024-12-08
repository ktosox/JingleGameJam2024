extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



#func _on_inspect_object_pressed() -> void:
	#$InspectScreen.show_object(load("res://experimental/test_ball.glb").instantiate())
	#pass # Replace with function body.
#
#
#func _on_inspect_object_2_pressed() -> void:
	#$InspectScreen.show_object(load("res://experimental/test_cube.glb").instantiate())
	#pass # Replace with function body.


func _on_test_item_spawn_pressed() -> void:
	$Conveyor.load_items([ItemData.new(),ItemData.new(),ItemData.new()])
	var items = $Conveyor/ItemBox.get_children()
	for node in items:
		
		print(node.global_position)
	pass # Replace with function body.


func _on_end_pressed() -> void:
	$Conveyor.end_sequence()
	pass # Replace with function body.


func _on_start_pressed() -> void:
	$Conveyor.start_sequence()
	pass # Replace with function body.


func _on_manual_pressed() -> void:
	$InspectScreen.show_manual()
	pass # Replace with function body.
