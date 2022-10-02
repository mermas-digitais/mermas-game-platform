extends Area2D

#Faz o personagem pular quando pisa em cima 
func _on_trampolim_body_entered(body):
	body.velocidadeXY.y = body.pulo 
	$AnimationPlayer.play("jump")
	pass 


	
