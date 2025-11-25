extends Node2D

var can_teleport = true
@export var target_portal: Node2D
@onready var TimerCooldown: Timer = $TeleportCooldown

# Called when the node enters the scene tree for the first time.
func _ready() -> void: 
	$AnimatedSprite2D.play("BluePortal")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is PlayerSmall and can_teleport:
		body.global_position = target_portal.global_position
		target_portal.can_teleport = false
		TimerCooldown.start()



func _on_timer_timeout() -> void:
	target_portal.can_teleport = true
