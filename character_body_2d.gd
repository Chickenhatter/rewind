extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("ui_w"):
		input_vector.y -= 1
	if Input.is_action_pressed("ui_s"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_d"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_a"):
		input_vector.x -= 1
	velocity = input_vector * 500
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Cycle.tscn")
