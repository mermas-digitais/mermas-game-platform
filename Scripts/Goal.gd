extends Area2D

func _on_Chegada_body_entered(body:Node)->void:
	if body.name == "Player":
		var audio = get_tree().current_scene.get_node_or_null("AudioFundo")
		if audio:
			audio.stop()
		$AnimationPlayer.play("trofeu")
		$AudioStreamPlayer2D.play()
		var hub = get_tree().current_scene.get_node_or_null("CanvasLayer/HBoxContainer/Control2")
		if hub:
			Global.tempo_minutos = hub.minutos
			Global.tempo_segundos = hub.segundos
		yield(get_tree().create_timer(3), "timeout")
		var victory = load("res://Interface/Victory.tscn").instance()
		get_tree().current_scene.add_child(victory)
