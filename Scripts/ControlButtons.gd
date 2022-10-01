extends Control
var upButton = false
var leftButton = false
var rightButton = false


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_upButton_pressed():
	upButton = true





func _on_upButton_released():
	upButton = false


