extends RichTextLabel

var text_print_ratio = 43.0

func _ready() -> void:
	EventBus.connect("message_sent",Callable(self,"print_text"))
	pass

func print_text(message : String) -> void:
	$TextAnimator.stop()
	text = message
	$TextAnimator.speed_scale = text_print_ratio / message.length()
	$TextAnimator.play("flat")
	pass
