extends Node2D

@onready var timer = $GameTimer
@onready var timer_label = $TimerContainer/TimerLabel
@onready var score_label = $ScoreContainer/ScoreLabel
@export var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start(60)
	timer.timeout.connect(_on_Timer_timeout)
	pass # Replace with function body.


func _on_Timer_timeout():
	get_tree().change_scene_to_file("res://credits.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer_label.text = str(int(timer.time_left))
	score_label.text =  str(score)
	#$TimerLabel.set_text(str(timer.get_time_left()))
