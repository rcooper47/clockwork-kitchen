extends Marker2D
#@onready var timer = $Timer

func _ready():
	pass
	#spawn_food()


func _process(delta):
	pass

func spawn_recipe():
	var recipe = preload("res://wine_order.tscn")
	var new_recipe  = recipe.instantiate()
	add_child(new_recipe)
	new_recipe.add_to_group("active_recipes")
	#var active_recipes = get_tree().get_nodes_in_group("active_recipes")
	#print(active_recipes)
	#self.get_parent().active_recipes.append(new_recipe.ingredient)
	
	
	#get_tree().create_timer(randf_range(2, 3)).timeout.connect(spawn_food)

func recipe_timeout():
	
	queue_free()
	
func _on_timer_timeout():
	pass
	#spawn_food()
	 # Replace with function body.

func _on_table_body_entered(body):
	body.queue_free()


func _on_plate_body_body_entered(body):
	body.queue_free()

