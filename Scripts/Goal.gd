extends Area2D


func _on_Chegada_body_entered(body:Node)->void:
	print(body.name)
	if body.name == "Player":
		$AudioFundo.stop()
		$AnimationPlayer.play("trofeu")
		$AudioStreamPlayer2D.play()
		yield(get_tree().create_timer(3),"timeout")
		get_tree().change_scene("res://Interface/Home.tscn")
