extends KinematicBody2D

#variaveis
var velocidadeXY = Vector2.ZERO
var velMovimento = 400
var gravidade = 1200
var pulo = -720
var isGrounded
onready var raycasts = $raycasts


func _physics_process(delta: float) -> void:
	velocidadeXY.y += gravidade * delta #personagem com gravidade
	_get_input()
	velocidadeXY = move_and_slide(velocidadeXY)
	isGrounded = _check_is_ground()
	
	_set_animation()
	
#movimento do personagem, que pode alterar ora para a direita, ora para a esquerda 
func _get_input():
	velocidadeXY.x = 0 
	var movimento = int(Input.is_action_pressed("mover_direita")) - int(Input.is_action_pressed("mover_esquerda"))
	velocidadeXY.x = lerp(velocidadeXY.x, velMovimento * movimento, 0.2)
	
	if movimento !=0:
		$Textura.scale.x = movimento
		
#Faz o personagem pular
func _input(event: InputEvent)->void:
	if event.is_action_pressed("pular") && isGrounded:
		velocidadeXY.y = pulo/2
		
#verifica se o personagem esta no chão para colocar isGround como true ou false
func _check_is_ground():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
			
	return false
		
#mudar as animações
func _set_animation():
	var animar="Parado"
	
	if !isGrounded:
		animar = "Pular"
	elif velocidadeXY.x != 0:
		animar = "Correr"
	
	if $AnimationPlayer.assigned_animation != animar:
		$AnimationPlayer.play(animar)
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
