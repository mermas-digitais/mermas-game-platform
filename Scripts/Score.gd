extends Label


#atualiza os pontos na tela
func _process(delta:float)->void:
	text = "000" + String(Global.frutas) 
	if Global.frutas >=10:
		text = "00" + String(Global.frutas) 
	elif Global.frutas >=100:
		text = "0" + String(Global.frutas) 
		
	
