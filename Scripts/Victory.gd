extends CanvasLayer

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	var min_restante = Global.tempo_minutos
	var seg_restante = Global.tempo_segundos
	var total_inicial = 2 * 60 + 60
	var total_restante = min_restante * 60 + seg_restante
	var elapsed = total_inicial - total_restante
	var min_gasto = int(elapsed) / 60
	var seg_gasto = int(elapsed) % 60
	var tempo_str = "%02d:%02d" % [min_gasto, seg_gasto]
	$Panel/VBox/TempoLabel.text = "Tempo: " + tempo_str
	$Panel/VBox/FrutasLabel.text = "Frutas: " + str(Global.frutas)
	get_tree().paused = true
	$Panel/VBox/RestartBtn.grab_focus()

func _on_RestartBtn_pressed():
	Global.frutas = 0
	get_tree().paused = false
	get_tree().change_scene("res://Levels/Level1.tscn")

func _on_HomeBtn_pressed():
	Global.frutas = 0
	get_tree().paused = false
	get_tree().change_scene("res://Interface/Home.tscn")
