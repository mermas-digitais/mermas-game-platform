extends KinematicBody2D

onready var animation = $AnimationPlayer
onready var timer = $Timer

onready var reset_position = global_position

var velocity = Vector2.ZERO
var gravity = 720
var is_triggered = false
export var reset_timer = 2.0

func _ready():
	set_physics_process(false)

func _physics_process(delta:float)->void:
	velocity.y += gravity * delta
	position += velocity * delta

func collide_with(collision: KinematicCollision2D, collider: KinematicBody2D):
	if !is_triggered:
		is_triggered = true
		animation.play("Shake")
		velocity = Vector2.ZERO

func _on_AnimationPlayer_animation_finished(anim_name):
	set_physics_process(true)
	timer.start(reset_timer)

func _on_Timer_timeout()->void:
	set_physics_process(false)
	yield(get_tree(), "physics_frame")
	var temp = collision_layer
	collision_layer = 0
	global_position = reset_position
	yield(get_tree(), "physics_frame")
	collision_layer = temp
	is_triggered = false
	
