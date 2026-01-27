extends Node2D


const LAST_LEVEL = 5
const LEVEL_PATH = "res://Scenes/level_"

@onready var anim: AnimationPlayer = $AnimationPlayer

func change_to_next_level(current_level:int) -> void:
	if current_level < LAST_LEVEL:
		get_tree().change_scene_to_file(LEVEL_PATH + str(current_level + 1) + ".tscn")
		
	else:
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
		
