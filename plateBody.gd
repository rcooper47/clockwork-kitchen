extends Area2D
var fastforward_foods = ["milk", "fish", "coffee beans", "grape"]
var rewind_foods = ["cheese", "baked fish", "coffee", "wine"]
# array of recipes that are active.   recipe.desired_variable(ingredient) 
#if match. delete first match from array & add points
# elif no match no points

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered",Callable(self, "_on_Area_body_entered"))
	var active_recipes = get_tree().get_nodes_in_group("active_recipes")
	
	for active_recipe in active_recipes:
		print(active_recipe.ingredient)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# for recipe in active_recipes: if recipe.ingredient == body.name

func _on_Area_body_entered(body: Node2D):
	var active_recipes = get_tree().get_nodes_in_group("active_recipes")
	print(active_recipes)
	#for active_recipe in active_recipes:
		#print(active_recipe.ingredient)
	if body.is_in_group("food_group"):
		#print(body.name, self.get_parent().name)
		if body.name in rewind_foods and self.get_parent().name == "rewindPlate": #recipe.ingredient == food.name:
			#print("ok")
			for active_recipe in active_recipes:
				print(active_recipe.ingredient)
				if active_recipe.ingredient == body.name:
					get_tree().root.get_child(0).score += 10
			#print(body.name)
			# add points & validate active recipe
			body.queue_free()
		elif body.name in fastforward_foods and self.get_parent().name == "fastForwardPlate":
			#print("ok")
			for active_recipe in active_recipes:
				#print(active_recipe.ingredient)
				if active_recipe.ingredient == body.name:
					get_tree().root.get_child(0).score += 10
			#print(body.name)
		body.queue_free()
		print(get_tree().root.get_child(0).score)
		
	
