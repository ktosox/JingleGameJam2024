extends Control

@export var body : RigidBody2D

func _process(delta: float) -> void:
	body.global_position = global_position
