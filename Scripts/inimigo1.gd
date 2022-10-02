extends KinematicBody2D

export var velocidade = 32
export var vida = 1
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
	
	if $Ray_wall.is_colliding():
		$anim.play("idle")
	
	movimento = move_and_slide(movimento)
	
func _on_anim_animation_finished(anim_name: String) -> void:
	if anim_name == "idle":
		$texture.flip_h != $texture.flip_h
		$Ray_wall.scale.x *= -1
		direcaoMovimento *= -1
		$anim.play("run")
		


func _on_CollisionShape2D_child_entered_tree(node):
	print("tocou")
