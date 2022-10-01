extends CanvasLayer

func _on_TextureButton_pressed():
	$ColorRect/AnimationPlayer.play("Desaparecer")
	get_tree().change_scene("res://Levels/Level1.tscn")
	
