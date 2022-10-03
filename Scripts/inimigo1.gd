extends KinematicBody2D

export var velocidade = 32
export var vida = 2
var movimento =  Vector2.ZERO
var direcaoMovimento = -1
var gravidade = 1200
var hitted = false


func _physics_process(delta: float) -> void:
	movimento.x = velocidade * direcaoMovimento
	movimento.y += gravidade * delta
	
	if direcaoMovimento == 1:
		$texture.flip_h = true
	else:
		$texture.flip_h = false
	_set_animation()
	#if $Ray_wall.is_colliding():
		#$anim.play("idle")
	movimento = move_and_slide(movimento)
	
func _on_anim_animation_finished(anim_name: String) -> void:
	if anim_name == "idle":
		$texture.flip_h != $texture.flip_h
		$Ray_wall.scale.x *= -1
		direcaoMovimento *= -1
		$anim.play("run")
		
func _set_animation():	
	var anim_name ="run"	
	if $Ray_wall.is_colliding():
		anim_name="idle"
	elif movimento.x != 0:
		anim_name = "run"
	if hitted == true:
		anim_name = "hit"
	if $anim.assigned_animation != anim_name:
		$anim.play(anim_name)

func _on_hitbox_body_entered(body):
	hitted = true
	vida -= 1
	body.velocidadeXY.y -= 300
	yield(get_tree().create_timer(0.2),"timeout")
	hitted = false
	
	if vida < 1:
		queue_free()
		Global.frutas = 0
		get_node("hitbox/Collision").set_deferred("disabled",true)
		
