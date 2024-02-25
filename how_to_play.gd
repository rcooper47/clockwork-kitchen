extends Node2D



func _on_start_game_pressed():
	get_tree().change_scene_to_file("res://sample.tscn") # change to gameplay screen
	
	
func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://start_screen.tscn") # change to start screen
