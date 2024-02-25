extends Sprite2D

@export var ingredient = "cheese"
@export var recipe_name = "milk"
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().create_timer(5).timeout.connect(queue_free)
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

