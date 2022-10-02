extends CanvasLayer

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")

func _input(event: InputEvent)->void:
	if event.is_action_pressed("confirma"):
		get_tree().change_scene("res://Levels/Level1.tscn")
	


func _on_OptionsBtn_pressed():
	var infoScene = load("res://Interface/InfoScene.tscn").instance()
	get_tree().current_scene.add_child(infoScene)


func _on_QuitBtn_pressed():
	get_tree().quit()
