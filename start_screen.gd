extends Node2D


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://sample.tscn") # change to gameplay screen



func _on_rules_button_pressed():
	get_tree().change_scene_to_file("res://how_to_play.tscn") # change to instruction screen




func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://credits.tscn") # change to credits screen
