extends Node2D
var c = false
var v = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if c == true:
		$"../Character/Camera2D".position.y = $"../Character/CharacterBody2D".position.y
		$Pocket.position.x = $"../Character/CharacterBody2D".position.x
	if v == true:
		$Pocket/Path2D/PathFollow2D.progress += 1000*delta

func _on_camera_start_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		c = true


func _on_camera_start_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		c = false


func _on_one_to_two_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		v = true


func _on_pathers_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		v = false
		c = false
		$Pocket/Path2D/PathFollow2D.progress = 0
		$"../Character/CharacterBody2D".global_position = Vector2(5000, -2000)
		$"../Character/Camera2D".global_position = Vector2(5000, 0)
