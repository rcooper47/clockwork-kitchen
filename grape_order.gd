extends Sprite2D

@export var ingredient ="wine"
@export var recipe_name = "grape"
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().create_timer(5).timeout.connect(queue_free)
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

