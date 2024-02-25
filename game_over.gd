extends Node2D
@onready var score_label = $VBoxContainer/FinalScore
#@onready var final_score = get_tree().get_root().find_node("sample").score
var final_score = get_node("/root/GameManager").score


func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://sample.tscn") # return to gameplay scene
	
	


func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://start_screen.tscn") # change to start screen


func _process(delta):
	score_label.text =  str(final_score)
