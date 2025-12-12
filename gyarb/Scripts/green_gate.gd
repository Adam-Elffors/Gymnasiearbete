extends Path2D
class_name GreenGate
@export var loop = true
@export var speed = 2.0
@export var speed_scale = 1.0
@onready var path = $PathFollow2D
@onready var animation = $AnimationPlayer


var green_pressed = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#path.progress += speed
	pass

func on_green_button_pressed():
	green_pressed = true
	if green_pressed:
		$AnimationPlayer.play("move")
	

func on_green_button_unpressed():
	green_pressed = false
	$AnimationPlayer.play_backwards("move")


	
