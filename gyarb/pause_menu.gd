extends Control


func _ready():
	$AnimationPlayer.play("RESET")
#Resume och paus funktion som blurrar skärmen och "avblurrar" den när man pausar och resumar
func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
#Funktion som gör så att ifall man trycker på Escape så pausas spelet, samt ifall man trycker igen så fortsätter spelet.
func testEsc():
	if Input.is_action_just_pressed("pause") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("pause") and get_tree().paused == true:
		resume()


#Fortsätter spelet om man trycker på resume.
func _on_resume_pressed() -> void:
	resume()



#Startar om banan när man trycker på restart
func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()



#Gör så att man går tillbaka till main menu ifall man avslutar level
func _on_quit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

#Gör så att man alltid kan trycka på Esc under hela levels gång
func _process(delta):
	testEsc()
