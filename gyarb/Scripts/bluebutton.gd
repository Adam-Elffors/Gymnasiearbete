extends StaticBody2D
class_name BlueButton

signal BlueButtonPressed
signal BlueButtonNotPressed


func _ready() -> void:
	$AnimatedSprite2D.play("BlueButtonNotPressed")
	


func _physics_process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is PlayerSmall:
		emit_signal("BlueButtonPressed")
		$AnimatedSprite2D.play("BlueButtonPressed")
	elif body.is_in_group("Crates"):
		emit_signal("BlueButtonPressed")
		$AnimatedSprite2D.play("BlueButtonPressed")
	
		

		


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is PlayerSmall:
		emit_signal("BlueButtonNotPressed")
		$AnimatedSprite2D.play("BlueButtonNotPressed")
	elif body.is_in_group("Crates"):
		emit_signal("BlueButtonNotPressed")
		$AnimatedSprite2D.play("BlueButtonNotPressed")
		



	
