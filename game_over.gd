extends Node2D
@onready var score_label = $FinalScore
@onready var final_score = Global.Get_Score()#get_tree().get_root().find_node("sample").score



func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://sample.tscn") # return to gameplay scene
	Global.score=0
	
	


func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://start_screen.tscn") # change to start screen
	Global.score=0

func _process(delta):
	score_label.text =  str(final_score)
