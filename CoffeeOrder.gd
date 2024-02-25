extends Sprite2D

@export var ingredient = "coffee beans"
@export var recipe_name = "coffee"
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().create_timer(5).timeout.connect(queue_free)
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

