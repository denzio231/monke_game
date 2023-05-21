extends sapient
var mass = 7
var weight = mass*gravity
var speed = 300
var friction = 0.1
var jump_power = 1000
func _ready():
	print('ready')



func _physics_process(delta):
	var input = Vector2(Input.get_action_strength("right")-Input.get_action_strength("left"),0)
	velocity += input*speed
	velocity.x -= velocity.x*friction 
	velocity.y += weight
	
	if Input.is_action_just_pressed("jump"):
		velocity.y -= jump_power
	move_and_slide()
