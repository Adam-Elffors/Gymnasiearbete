extends Control

#Byter till intstruktionsmenyn efter man tryckt på continue i main menyn

func _on_continue_pressed() -> void:
	LevelManager.change_to_next_level(0)
