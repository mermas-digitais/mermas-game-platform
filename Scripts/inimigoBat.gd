extends KinematicBody2D

export var velocidade = 40
export var vida = 1
export var amplitude = 30.0
export var frequencia = 2.0
export var patrol_range = 120.0
var direcaoMovimento = -1
var hitted = false
var tempo = 0.0
var pos_inicial_y = 0.0
var pos_inicial_x = 0.0

func _ready():
	pos_inicial_y = position.y
	pos_inicial_x = position.x

func _physics_process(delta: float) -> void:
	tempo += delta
	position.x += velocidade * direcaoMovimento * delta
	if abs(position.x - pos_inicial_x) > patrol_range:
		direcaoMovimento *= -1
	position.y = pos_inicial_y + sin(tempo * frequencia) * amplitude
	if direcaoMovimento == 1:
		$texture.flip_h = true
	else:
		$texture.flip_h = false
	_set_animation()

func _set_animation():
	var anim_name = "fly"
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
