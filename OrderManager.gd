extends Node2D
var children
var curr
var prev


# Called when the node enters the scene tree for the first time.
func _ready():
	children = self.get_children()
	curr = children[0]
	prev = children[0]
	activate_spawner()

	
	
func activate_spawner():
	curr = children.pick_random()
	while curr == prev:
		curr = children.pick_random()
	curr.spawn_recipe()
	prev = curr
	get_tree().create_timer(2).timeout.connect(prev.recipe_timeout)
	get_tree().create_timer(randf_range(1, 2)).timeout.connect(activate_spawner)
	


func recipe_timeout():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
