extends StaticBody2D
class_name GreenButton

signal GreenButtonPressed
signal GreenButtonNotPressed

#Har den gröna knappen ej nedtryckt från början
func _ready() -> void:
	$AnimatedSprite2D.play("GreenButtonNotPressed")


#Kollar ifall antingen en av spelarna eller en låda står på knappen och isåfall trycker ner den.
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is PlayerSmall or body is PlayerBig:
		emit_signal("GreenButtonPressed")
		$AnimatedSprite2D.play("GreenButtonPressed")
	elif body.is_in_group("Crates"):
		emit_signal("GreenButtonPressed")
		$AnimatedSprite2D.play("GreenButtonPressed")


#Trycker upp knappen igen om inget står på den längre.
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is PlayerSmall or body is PlayerBig:
		emit_signal("GreenButtonNotPressed")
		$AnimatedSprite2D.play("GreenButtonNotPressed")
	elif body.is_in_group("Crates"):
		emit_signal("GreenButtonNotPressed")
		$AnimatedSprite2D.play("GreenButtonNotPressed")
