extends Area2D

var ponto = 1
#Quando o personagem entrar em contado vai ser chamado função de animação, logo apos o fim dela o objeto é destruido
func _on_Item_body_entered(body):
	$AnimationPlayer.play("coletada")
	Global.frutas += ponto
	print(Global.frutas)
	
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "coletada":
		queue_free()
