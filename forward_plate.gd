extends CharacterBody2D

@onready var state_chart = $StateChart
@onready var animation_player = $AnimationPlayer
@onready var animation_tree = $AnimationTree
@onready var _animation_state_machine: AnimationNodeStateMachinePlayback = animation_tree.get("parameters/playback")
@onready var sprite_2d = $Sprite2D


const SPEED = 700.0
const JUMP_VELOCITY = -450.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	$AnimationPlayer.play("Idle")
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up")) and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		sprite_2d.flip_h = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		sprite_2d.flip_h = false

		
	if velocity.length_squared() <= 0.05:
		state_chart.send_event("idling")
	else:
		state_chart.send_event("moving")
		_animation_state_machine.travel("Moving")
	move_and_slide()
	#for index in get_slide_collision_count():
		#var collision := get_slide_collision(index)
		#var body := collision.get_collider()
		#print("Collided with: ", body.name)

