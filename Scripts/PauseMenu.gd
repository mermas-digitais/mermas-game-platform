extends CanvasLayer

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	visible = false
	get_tree().paused = false

func _input(event):
	if event.is_action_pressed("pausar"):
		if visible:
			_resume()
		else:
			_pause()

func _pause():
	visible = true
	get_tree().paused = true
	$Overlay/VBox/ResumeBtn.grab_focus()

func _resume():
	visible = false
	get_tree().paused = false

func _on_ResumeBtn_pressed():
	_resume()

func _on_RestartBtn_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_QuitBtn_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Interface/Home.tscn")
