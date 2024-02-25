extends RigidBody2D
var food_names = ["grape", "wine", "milk", "cheese", "fish", "baked fish", "coffee beans", "coffee"]
var food_colors = {"grape":Color('#8c3cff'), "wine":Color('#8c119b'), "milk":Color(1, 1, 1), "cheese":Color('#ffff98'), "fish":Color('#82ffff'), 'baked fish':Color('#f26f75'), "coffee beans":Color('#513918'), "coffee":Color('#ca9855')}
# Called when the node enters the scene tree for the first time.
func _ready():
	self.name = food_names.pick_random()
	var rect = get_child(1)
	#print(self.name)
	#print(food_colors[self.name])
	rect.set_color(food_colors[self.name])
	#print(rect.get_color())
	#print(get_child(1))
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
	print("food")
