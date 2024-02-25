extends RigidBody2D
var food_names = ["grape", "wine", "milk", "cheese", "fish", "coffee beans", "coffee"]

# Called when the node enters the scene tree for the first time.
func _ready():
	self.name = food_names.pick_random()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_table_body_entered(body):
	pass
	

func _on_timer_timeout():
	pass # Replace with function body.
