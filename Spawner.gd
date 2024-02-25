extends Marker2D
@onready var timer = %Timer

func _ready():
	spawn_food()


func _process(delta):
	pass

func spawn_food():
	var food_scene = preload("res://food.tscn")
	var new_food  = food_scene.instantiate()
	add_child(new_food)
	get_tree().create_timer(randf_range(2, 3)).timeout.connect(spawn_food)

func _on_timer_timeout():
	pass
	#spawn_food()
	 # Replace with function body.


func _on_table_body_entered(body):
	body.queue_free()
	print(body.name)
