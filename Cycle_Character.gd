extends CharacterBody2D

var fall = false
var four = true
var four_speed = 300


var twonfall = false
var twonfallspeed = 300.0
var JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if twonfall == true:
		if not is_on_floor():
			velocity += get_gravity() * delta
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		var direction := Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * twonfallspeed
		else:
			velocity.x = move_toward(velocity.x, 0, twonfallspeed)
	if four == true:
		var input_vector = Vector2.ZERO
		if Input.is_action_pressed("ui_w"):
			input_vector.y -= 1
		if Input.is_action_pressed("ui_s"):
			input_vector.y += 1
		if Input.is_action_pressed("ui_a"):
			$AnimatedSprite2D.rotation -= 0.1
			input_vector.x -= 1
		if Input.is_action_pressed("ui_d"):
			$AnimatedSprite2D.rotation += 0.1
			input_vector.x += 1
		velocity = input_vector * four_speed
	move_and_slide()
