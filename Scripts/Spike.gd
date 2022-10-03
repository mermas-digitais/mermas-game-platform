extends KinematicBody2D

export var velocidade = 32
export var vida = 2
var hitted = false

func _on_hitbox_body_entered(body):
	hitted = true
	vida -= 1
	body.velocidadeXY.y -= 300
	yield(get_tree().create_timer(0.2),"timeout")
	Global.frutas = 0
	hitted = false
