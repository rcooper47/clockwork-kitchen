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


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func activate_spawner():
	curr = children.pick_random()
	while curr == prev:
		curr = children.pick_random()
	curr.spawn_food()
	prev = curr
	get_tree().create_timer(randf_range(1, 2)).timeout.connect(activate_spawner)
	
