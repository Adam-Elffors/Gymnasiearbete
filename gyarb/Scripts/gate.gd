extends Node2D
class_name Gate

signal DoorOpening
signal DoorNotOpened

var blue_pressed = false
var red_pressed = false
var gate_opened = false

func _ready() -> void:
	$AnimatedSprite2D.play("DoorNotOpened")




func on_blue_button_pressed():
	blue_pressed = true
	if blue_pressed and red_pressed and not gate_opened:
		$AnimatedSprite2D.play("DoorOpening")
		gate_opened = true

func on_red_button_pressed():
	red_pressed = true
	if blue_pressed and red_pressed and not gate_opened:
		$AnimatedSprite2D.play("DoorOpening")
		gate_opened = true

func on_blue_button_unpressed():
	blue_pressed = false

func on_red_button_unpressed():
	red_pressed = false
	

func _on_body_entered(body: Node2D) -> void:
	if gate_opened == true:
		if body is PlayerBig or body is PlayerSmall:
			emit_signal("DoorOpening")
			$AnimatedSprite2D.play("DoorOpening")
		
