extends CanvasLayer

func _on_TextureButton_pressed():
	$ColorRect/AnimationPlayer.play("Desaparecer")
	get_tree().change_scene("res://Levels/Level1.tscn")
	
func _input(event: InputEvent)->void:
	if event.is_action_pressed("confirma"):
		$ColorRect/AnimationPlayer.play("Desaparecer")
		get_tree().change_scene("res://Levels/Level1.tscn")
	
