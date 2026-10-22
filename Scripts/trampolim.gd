extends Area2D

func _on_trampolim_body_entered(body):
	if body.name != "Player":
		return
	body.velocidadeXY.y = body.pulo
	$AnimationPlayer.play("jump")

func _on_trampolim_body_exited(_body):
	pass
