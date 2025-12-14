extends CharacterBody2D

var fall = false
var fourway = false
var four_speed = 300
var twomove = false
var Nm = false
var twonfall = true
var twonfallspeed = 300.0
var JUMP_VELOCITY = -400.0
var Nggg = 0


func _physics_process(delta: float) -> void:
	if twonfall == true:
		var input_vector = Vector2.ZERO
		if not is_on_floor():
			velocity += get_gravity() * delta
		if Input.is_action_just_pressed("ui_w") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		var direction := Input.get_axis("ui_a", "ui_d")
		if direction:
			velocity.x = direction * twonfallspeed
		else:
			velocity.x = move_toward(velocity.x, 0, twonfallspeed)
		if Input.is_action_pressed("ui_a"):
			$AnimatedSprite2D.rotation -= 0.1
		if Input.is_action_pressed("ui_d"):
			$AnimatedSprite2D.rotation += 0.1
		if is_on_wall():
			if is_on_floor():
				input_vector.y -= 1
				velocity += input_vector * 190
	if fourway == true:
		var input_vector = Vector2.ZERO
		if Input.is_action_pressed("ui_w"):
			input_vector.y -= 1
		if Input.is_action_pressed("ui_s"):
			input_vector.y += 1
		if Input.is_action_pressed("ui_a"):
			$AnimatedSprite2D.rotation -= 0.1
			input_vector.x -= 1
		if Input.is_action_pressed("ui_d"):
			input_vector.x += 1
			$AnimatedSprite2D.rotation += 0.1
		velocity = input_vector * four_speed
	if twomove == true:
		if not is_on_floor():
			velocity += get_gravity() * delta 
		if Input.is_action_just_pressed("ui_w") and is_on_floor():
			velocity.y = JUMP_VELOCITY 
		var direction := Input.get_axis("ui_a", "ui_d")
		if direction:
			velocity.x = direction * twonfallspeed
		else:
			velocity.x = move_toward(velocity.x, 0, twonfallspeed)
		if Input.is_action_pressed("ui_a"):
			$AnimatedSprite2D.rotation -= 0.1
		if Input.is_action_pressed("ui_d"):
			$AnimatedSprite2D.rotation += 0.1
	if Nm == true:
		var input_vector = Vector2.ZERO
		velocity = input_vector * 0
	move_and_slide()




func _on_infront_third_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Nggg == 0:
			fall = false
			fourway = false
			four_speed = 300
			twomove = false
			twonfall = false
			Nm = true
			Nggg = 1


func _on_uub_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		fall = false
		fourway = false
		four_speed = 300
		twomove = false
		twonfall = true
		Nm = false


func _on_huh_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_fourent_body_entered(body: Node2D) -> void:
	pass


func _on_fourext_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		fall = false
		fourway = true
		four_speed = 300
		twomove = false
		twonfall = false
		Nm = false


func _on_thethingtofour_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		fall = false
		fourway = true
		four_speed = 300
		twomove = false
		twonfall = false
		Nm = false


func _on_camera_follower_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		fall = false
		fourway = false
		four_speed = 300
		twomove = false
		twonfall = true
		Nm = false
