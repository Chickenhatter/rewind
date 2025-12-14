extends CharacterBody2D

var l = true
var z = false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if l == true:
		if not is_on_floor():
			velocity += get_gravity() * delta
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		var direction := Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		$"../Path2D/PathFollow2D/Camera2D".position.y = $".".position.y
	if z == true:
		$"../Path2D/PathFollow2D/Camera2D".position.y -= 300*delta
		var help = Vector2.ZERO
		if Input.is_action_pressed("ui_a"):
			help.x -= 1
		if Input.is_action_pressed("ui_d"):
			help.x += 1
		help.y -= 1
		velocity = help *300
	move_and_slide()


func _on_gfbbggbbr_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		l = false
		z = true
		$"../Path2D/PathFollow2D/Camera2D".position = Vector2(4000,0)
		$".".position = Vector2(4000,0)
