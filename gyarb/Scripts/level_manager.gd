extends Node2D


const LAST_LEVEL = 9
const LEVEL_PATH = "res://Scenes/level_"
	
@onready var anim: AnimationPlayer = $AnimationPlayer



func change_to_next_level(current_level:int) -> void:
	if current_level < LAST_LEVEL:
		$CanvasLayer/ColorRect/Label.text = "Level " + str(current_level + 1)
		anim.play("fade_in")
		await anim.animation_finished
		get_tree().change_scene_to_file(LEVEL_PATH + str(current_level + 1) + ".tscn")
		anim.play("fade_out")
	else:
		anim.play("fade_in")
		await anim.animation_finished
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
		anim.play("fade_out")

func restart_current_level():
	get_tree().reload_current_scene()
