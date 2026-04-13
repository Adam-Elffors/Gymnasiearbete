extends Control



#Ändrar till instruktionsmenyn när man trycker på start i main menu
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/instructions_menu.tscn")


#Ifall man trycker på quit så stängs spelet av
func _on_exit_pressed() -> void:
	get_tree().quit()
