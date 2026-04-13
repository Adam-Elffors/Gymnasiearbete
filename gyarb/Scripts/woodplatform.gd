extends Path2D
#alla variabler för hur snabbt platformen kan rörasig
@export var loop = true
@export var speed = 2.0
@export var speed_scale = 1.0
@onready var path = $PathFollow2D
@onready var animation = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
#Gör så att jag kan använda speed variablen, samt spelar animationen för woodplatform konstant, fram och tillbaka
func _ready() -> void:
	if not loop:
		animation.speed_scale = speed_scale
		animation.play("move")
		set_process(false)
	if loop:
		animation.speed_scale = speed_scale
		animation.play_backwards("move")
