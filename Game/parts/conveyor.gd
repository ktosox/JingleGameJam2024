extends Area2D

var thing_scene = preload("res://systems/items/basic_thing.tscn")

@export var start_animation = "export"

@export var end_animation = "import"

func spawn_item(data : ItemData ) -> Node2D: # creates and returns a new item using inforamtion in data
	var new_item = thing_scene.instantiate()
	new_item.data = data
	return new_item

func load_items(data_array : Array): # takes in a Array of ItemData to create the items of screen
	var open_locations = []
	for c in $SpawnPoints.get_children():
		open_locations.push_back(c.position)
	var new_item 
	for data in data_array:
		new_item = spawn_item(data)

		new_item.position = open_locations.pop_front()

		$ItemBox.add_child(new_item)
	start_sequence()
	pass

func start_sequence():
	$BoxMover.play(start_animation)
	await $BoxMover.animation_finished
	unlock_items()
	pass

func end_sequence():
	lock_items()
	$BoxMover.play_backwards(end_animation)
	await $BoxMover.animation_finished
	unload_items()
	pass

func lock_items():
	for thing in get_overlapping_bodies():
		thing.reparent($ItemBox)
		thing.lock()

	pass

func unlock_items():
	for thing in $ItemBox.get_children():
		thing.unlock()
		thing.reparent(get_parent())
	pass

func unload_items():
	var thing_data_array = []
	for thing in $ItemBox.get_children():
		thing_data_array.push_back(thing.data)
		thing.queue_free()
	EventBus.emit_signal("items_unloaded",thing_data_array)
	$BoxMover.play("RESET")
	pass
