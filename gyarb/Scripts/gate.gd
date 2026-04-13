extends Node2D
class_name Gate

signal DoorOpening
signal DoorNotOpened

#Variabler som kollar om gaten kan öppnas
var blue_pressed = false
var red_pressed = false
var gate_opened = false
var big_player_entered = false
var small_player_entered = false

#Dörren är stängd till en början 
func _ready() -> void:
	$AnimatedSprite2D.play("DoorNotOpened")



#Kollar om den blåa knappen är tryckt
func on_blue_button_pressed():
	blue_pressed = true
	if blue_pressed and red_pressed and not gate_opened:
		$AnimatedSprite2D.play("DoorOpening")
		gate_opened = true

#Respektive den röda, sedan kollar den om båda är nedtryckta samtidigt och öppnar då gaten

func on_red_button_pressed():
	red_pressed = true
	if blue_pressed and red_pressed and not gate_opened:
		$AnimatedSprite2D.play("DoorOpening")
		gate_opened = true

#Kollar så att om man lämnar knappen så trycks den upp igen
func on_blue_button_unpressed():
	blue_pressed = false

func on_red_button_unpressed():
	red_pressed = false
	

#Kollar så att båda spelarna kolliderar med gaten och spelar därefter en animation
func _on_body_entered(body: Node2D) -> void:
	if gate_opened == true:
		if body is PlayerBig:
			big_player_entered = true
		elif body is PlayerSmall:
			small_player_entered = true
		
		if small_player_entered and big_player_entered:
			emit_signal("DoorOpening")
			$AnimatedSprite2D.play("DoorOpening")
		
