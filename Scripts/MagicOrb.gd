extends Area2D

var velocidade = 200
var direcao = 1
var dano = 1

func _ready():
	$AnimationPlayer.play("fly")

func _physics_process(delta):
	position.x += velocidade * direcao * delta

func _on_body_entered(body):
	if "vida" in body:
		body.hitted = true
		body.vida -= dano
		if body.vida < 1:
			body.queue_free()
	queue_free()

func _on_Timer_timeout():
	queue_free()
