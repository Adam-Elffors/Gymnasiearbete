extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Bluebutton.connect("BlueButtonPressed", $Gate.on_blue_button_pressed)
	$Redbutton.connect("RedButtonPressed", $Gate.on_red_button_pressed)
	$Bluebutton.connect("BlueButtonNotPressed", $Gate.on_blue_button_unpressed)
	$Redbutton.connect("RedButtonNotPressed", $Gate.on_red_button_unpressed)
	if has_node("Greenbutton"):
		$Greenbutton.connect("GreenButtonPressed", $GreenGate.on_green_button_pressed)
		$Greenbutton.connect("GreenButtonNotPressed", $GreenGate.on_green_button_unpressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
