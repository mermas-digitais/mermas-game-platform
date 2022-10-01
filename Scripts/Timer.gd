extends Control

export (int) var minutos = 2
export (int) var segundos = 60

#atualiza os tempo na tela
func _process(delta:float) -> void:
	if minutos > 0 and segundos <= 0:
		minutos -=1
		segundos = 60 # 00:60
	
	if segundos >= 10:
		$segundos.set_text(" : " + str(segundos))
	else:
		$segundos.set_text(" : 0" + str(segundos))
		
	if minutos >= 10:
		$minutos.set_text(str(minutos))
	else:
		$minutos.set_text("0" + str(minutos))
	
	if segundos <= 0:
		$Timer.stop()
		yield(get_tree().create_timer(1),"timeout")
		get_tree().reload_current_scene()
	
	

func _on_Timer_timeout():
	segundos -=1
