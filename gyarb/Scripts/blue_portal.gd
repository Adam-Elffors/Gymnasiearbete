extends Node2D

#Lägger in en can_teleport variabel för att hunna ha en cooldown
var can_teleport = true
@export var target_portal: Node2D
@onready var TimerCooldown: Timer = $TeleportCooldown

#Spelar en konstant animation för den blåa portalen
func _ready() -> void: 
	$AnimatedSprite2D.play("BluePortal")



#Spelet tar tur positionen för den andra portalen genom att jag länkar dem. En cooldown staras
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is PlayerSmall and can_teleport:
		body.global_position = target_portal.global_position
		target_portal.can_teleport = false
		TimerCooldown.start()


#Och när timern slutar så kan man teleportera igen
func _on_timer_timeout() -> void:
	target_portal.can_teleport = true
