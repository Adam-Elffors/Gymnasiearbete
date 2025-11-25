extends Node2D
class_name Gate

signal DoorOpening
signal DoorNotOpened

var blue_pressed = false
var red_pressed = false


func _ready() -> void:
	$AnimatedSprite2D.play("DoorNotOpened")




func on_blue_button_pressed():
	blue_pressed = true
	if blue_pressed and red_pressed:
		$AnimatedSprite2D.play("DoorOpening")

func on_red_button_pressed():
	red_pressed = true
	if blue_pressed and red_pressed:
		$AnimatedSprite2D.play("DoorOpening")

func on_blue_button_unpressed():
	blue_pressed = false

func on_red_button_unpressed():
	red_pressed = false
