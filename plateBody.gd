extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered",Callable(self, "_on_Area_body_entered"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_Area_body_entered(body: Node2D):
	if body.is_in_group("food_group"):
		body.queue_free()
		
	
