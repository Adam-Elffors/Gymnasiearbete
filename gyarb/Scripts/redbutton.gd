extends StaticBody2D
class_name RedButton

signal RedButtonPressed
signal RedButtonNotPressed


func _ready() -> void:
	$AnimatedSprite2D.play("RedButtonNotPressed")
	


func _physics_process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is PlayerBig:
		emit_signal("RedButtonPressed")
		$AnimatedSprite2D.play("RedButtonPressed")
	elif body.is_in_group("Crates"):
		emit_signal("RedButtonPressed")
		$AnimatedSprite2D.play("RedButtonPressed")
		
	
		

		


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is PlayerBig:
		emit_signal("RedButtonNotPressed")
		$AnimatedSprite2D.play("RedButtonNotPressed")
	elif body.is_in_group("Crates"):
		emit_signal("RedButtonNotPressed")
		$AnimatedSprite2D.play("RedButtonNotPressed")
		
