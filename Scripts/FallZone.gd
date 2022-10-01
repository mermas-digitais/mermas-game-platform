extends Area2D


func _on_FallZone_body_entered(body):
	yield(get_tree().create_timer(0.2),"timeout")
	get_tree().change_scene("res://Interface/GameOver.tscn")

