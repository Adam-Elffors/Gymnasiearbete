extends Node2D
class_name Gate

signal DoorOpening
signal DoorNotOpened

func _ready() -> void:
	$AnimatedSprite2D.play("DoorNotOpened")
	
