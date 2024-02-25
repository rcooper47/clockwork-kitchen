extends RigidBody2D
var food_names = ["grape", "wine", "milk", "cheese", "fish", "baked fish", "coffee beans", "coffee"]
const GRAPE = preload("res://Assets/Foods/grapes64.png")
const WINE = preload("res://Assets/Foods/wine.png")
const MILK = preload("res://Assets/Foods/ugly milk64.png")
const CHEESE = preload("res://Assets/Foods/cheese64.png")
const FISH = preload("res://Assets/Foods/fish64.png")
const BAKEDFISH = preload("res://Assets/Foods/baked fish64.png")
const COFFEEBEANS = preload("res://Assets/Foods/coffee beans64.png")
const COFFEE = preload("res://Assets/Foods/coffee.png")
var food_colors = {"grape":GRAPE, "wine":WINE, "milk":MILK, "cheese":CHEESE, "fish":FISH, 'baked fish':BAKEDFISH, "coffee beans":COFFEEBEANS, "coffee":COFFEE}
@export var food_id: String 
# Called when the node enters the scene tree for the first time.
func _ready():
	self.name = food_names.pick_random()
	food_id = self.name
	#print(food_id)
	var sprite = get_child(1)
	#print(self.name)
	#print(food_colors[self.name])
	sprite.set_texture(food_colors[self.name])
	#print(rect.get_color())
	#print(get_child(1))
	#self.connect(
		#'YOUR_SIGNAL_NAME',
		#get_node('/root/plate/plateBody'),
		#'is_active'
	#)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	pass # Replace with function body.


func _on_plate_body_body_entered(body):
	body.queue_free()
	print("food")
