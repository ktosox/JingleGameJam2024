extends RichTextLabel


func _ready() -> void:
	EventBus.connect("message_sent",Callable(self,"print_text"))
	pass

func print_text(message : String) -> void:
	text = message
	pass


func _on_button_pressed() -> void:
	EventBus.emit_signal("message_sent","test message")
	pass # Replace with function body.
