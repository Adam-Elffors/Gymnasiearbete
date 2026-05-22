extends Node2D

#Gör bara så att de gröna knapparna och väggarna fungerar med sina animationer då detta inte är en traditionel level.
func _ready() -> void:
	$Bluebutton.connect("BlueButtonPressed", $Gate.on_blue_button_pressed)
	$Redbutton.connect("RedButtonPressed", $Gate.on_red_button_pressed)
	$Bluebutton.connect("BlueButtonNotPressed", $Gate.on_blue_button_unpressed)
	$Redbutton.connect("RedButtonNotPressed", $Gate.on_red_button_unpressed)
	if has_node("Greenbutton"):
		$Greenbutton.connect("GreenButtonPressed", $GreenGate.on_green_button_pressed)
		$Greenbutton.connect("GreenButtonNotPressed", $GreenGate.on_green_button_unpressed)
	
	if has_node("Greenbutton2"):
		$Greenbutton2.connect("GreenButtonPressed", $GreenGate2.on_green_button_pressed)
		$Greenbutton2.connect("GreenButtonNotPressed", $GreenGate2.on_green_button_unpressed)
	
	if has_node("Greenbutton3"):
		$Greenbutton3.connect("GreenButtonPressed", $GreenGate3.on_green_button_pressed)
		$Greenbutton3.connect("GreenButtonNotPressed", $GreenGate3.on_green_button_unpressed)
	
	if has_node("Greenbutton3"):
		$Greenbutton4.connect("GreenButtonPressed", $GreenGate3.on_green_button_pressed)
		$Greenbutton4.connect("GreenButtonNotPressed", $GreenGate3.on_green_button_unpressed)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



	

#Kan trycka på main menu ifall man vill spela igen
func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
