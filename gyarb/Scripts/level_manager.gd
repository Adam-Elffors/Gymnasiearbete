extends Node2D

#Konstant som har koll på antal levelar
const LAST_LEVEL = 11
const LEVEL_PATH = "res://Scenes/level_"
	
@onready var anim: AnimationPlayer = $AnimationPlayer


#Kod som byter till rätt level, samt en fade in, fade out animation mellan man byter level
func change_to_next_level(current_level:int) -> void:
	if current_level < LAST_LEVEL:
		$CanvasLayer/ColorRect/Label.text = "Level " + str(current_level + 1)
		anim.play("fade_in")
		await anim.animation_finished
		get_tree().change_scene_to_file(LEVEL_PATH + str(current_level + 1) + ".tscn")
		anim.play("fade_out")
	
	else:
		$CanvasLayer/ColorRect/Label.text = "... "
		anim.play("fade_in")
		await anim.animation_finished
		get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
		anim.play("fade_out")


func restart_current_level():
	get_tree().reload_current_scene()
