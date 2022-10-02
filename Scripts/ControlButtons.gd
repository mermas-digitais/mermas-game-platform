extends Control

func _on_upButton_pressed():
	Global.upButton = true

func _on_upButton_released():
	Global.upButton = false

func _on_leftButton_pressed():
	Global.leftButton = true

func _on_leftButton_released():
	Global.leftButton = false
	
func _on_rightButton_pressed():
	Global.rightButton = true
	
func _on_rightButton_released():
	Global.rightButton = false


func _on_muteButton2_pressed():
	Global.musicafundo = false
