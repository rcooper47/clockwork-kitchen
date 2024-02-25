extends RigidBody2D
var food_names = ["grape", "wine", "milk", "cheese", "fish", "coffee beans", "coffee"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#self.connect(
		#'YOUR_SIGNAL_NAME',
		#get_node('/root/plate/plateBody'),
		#'_on_table_body_entered'
	#)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	pass # Replace with function body.


func _on_plate_body_body_entered(body):
	body.queue_free()
