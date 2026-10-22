extends KinematicBody2D

export var velocidade = 45
export var vida = 2
export var forca_pulo = -500
var movimento = Vector2.ZERO
var direcaoMovimento = -1
var gravidade = 1200
var hitted = false
var pulo_timer = 0.0

func _physics_process(delta: float) -> void:
	movimento.x = velocidade * direcaoMovimento
	movimento.y += gravidade * delta
	if direcaoMovimento == 1:
		$texture.flip_h = true
	else:
		$texture.flip_h = false
	if is_on_floor():
		pulo_timer += delta
		if pulo_timer >= 2.0:
			movimento.y = forca_pulo
			pulo_timer = 0.0
	_set_animation()
	if $Ray_wall.is_colliding():
		$texture.flip_h = !$texture.flip_h
		$Ray_wall.scale.x *= -1
		direcaoMovimento *= -1
	movimento = move_and_slide(movimento, Vector2.UP)
	if position.y > 240:
		queue_free()

func _set_animation():
	var anim_name = "run"
	if !is_on_floor():
		if movimento.y < 0:
			anim_name = "jump"
		else:
			anim_name = "fall"
	if hitted:
		anim_name = "hit"
	if $anim.assigned_animation != anim_name:
		$anim.play(anim_name)

func _on_hitbox_body_entered(body):
	hitted = true
	vida -= 1
	body.velocidadeXY.y -= 300
	yield(get_tree().create_timer(0.2), "timeout")
	hitted = false
	if vida < 1:
		queue_free()
		get_node("hitbox/Collision").set_deferred("disabled", true)
