extends Node2D



func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://sample.tscn") # return to gameplay scene
	
	


func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://start_screen.tscn") # change to start screen
