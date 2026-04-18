extends CharacterBody2D

const SPEED = 80.0
const GRAVITY = 980.0

var direction = 1

func _physics_process(delta):
	# Add gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Move back and forth
	velocity.x = SPEED * direction

	move_and_slide()

	# Reverse direction at walls
	if is_on_wall():
		direction *= -1

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
