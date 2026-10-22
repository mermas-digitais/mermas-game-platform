extends CanvasLayer

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	get_tree().paused = true

func _input(event):
	if event is InputEventKey or event is InputEventJoypadButton or event is InputEventScreenTouch:
		if event.is_pressed():
			get_tree().paused = false
			queue_free()
