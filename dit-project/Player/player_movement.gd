#Thank you to Youtube KobeDev for assistence
extends CharacterBody2d

#speed is constant because it won't be edited throughout the game
const speed = 300
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
			# Get horizontal input
	var horizontal = Input.get_action_strength("right") - Input.get_action_strength("left")
	var vertical = Input.get_action_strength("down") - Input.get_action_strength("up")
			# Apply horizontal movement
		if horizontal:
			velocity.x = horizontal * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)

		# Get vertical input


		# Apply vertical movement for Gas form
		velocity.y = vertical * SPEED
	#move the character
	move_and_slide()
	
	

func interact(interact_prompt):
	if ()
		interact_prompt

	
