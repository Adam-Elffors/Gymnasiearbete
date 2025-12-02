extends StaticBody2D
class_name GreenButton

signal GreenButtonPressed
signal GreenButtonNotPressed

func _ready() -> void:
	$AnimatedSprite2D.play("GreenButtonNotPressed")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is PlayerSmall or body is PlayerBig:
		emit_signal("GreenButtonPressed")
		$AnimatedSprite2D.play("GreenButtonPressed")
	elif body.is_in_group("Crates"):
		emit_signal("GreenButtonPressed")
		$AnimatedSprite2D.play("GreenButtonPressed")



func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is PlayerSmall or body is PlayerBig:
		emit_signal("GreenButtonNotPressed")
		$AnimatedSprite2D.play("GreenButtonNotPressed")
	elif body.is_in_group("Crates"):
		emit_signal("GreenButtonNotPressed")
		$AnimatedSprite2D.play("GreenButtonNotPressed")
