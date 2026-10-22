extends Control

func _ready():
	_update_touch_visibility()
	Input.connect("joy_connection_changed", self, "_on_joy_connection_changed")

func _update_touch_visibility():
	var show_touch = OS.has_touchscreen_ui_hint() and Input.get_connected_joypads().size() == 0
	$upButton.visible = show_touch
	$leftButton.visible = show_touch
	$rightButton.visible = show_touch
	$QuitButton.visible = show_touch

func _on_joy_connection_changed(_device, _connected):
	_update_touch_visibility()

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

func _on_QuitButton_pressed():
	get_tree().change_scene("res://Interface/Home.tscn")
