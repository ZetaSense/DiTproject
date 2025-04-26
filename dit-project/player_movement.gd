extends CharacterBody2d

@export var speed = 400
var float player_distance = 2f

# Called when the node enters the scene tree for the first time.
#func _ready():
	
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	
	#pass

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	var interact = Input("Interact")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func interact(interact_prompt):
	if ()
		interact_prompt

func interact_prompt():
	


var SPEED = 300.0
var velocity : Vector2 = Vector2()
var state = 1 # Assuming the initial state is Gas (1)

func _physics_process(delta):
	# Only process movement if the state is Gas
	if state == 1:
		# Enable the Gas form node and disable others (for visual/processing control)
		# Assuming you have other form nodes, you'd disable them here

		# Get horizontal input
		var horizontal = Input.get_action_strength("Right") - Input.get_action_strength("Left")

		# Apply horizontal movement
		if horizontal:
			velocity.x = horizontal * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)

		# Get vertical input
		var vertical = Input.get_action_strength("Move_down") - Input.get_action_strength("Move_up")

		# Apply vertical movement for Gas form
		velocity.y = vertical * SPEED

		# Move the character
		move_and_slide()
	else:
		# If not in Gas state, ensure no movement is applied and the Gas node is not processing
		velocity = Vector2.ZERO
		HydroGasForm.set_process(false)
		HydroGasForm.visible = false
		move_and_slide()
	
