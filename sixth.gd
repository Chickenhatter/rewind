extends Node2D
var c = false
var h = false
var q = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if c == true:
		$"../Character/Camera2D".position.x = $"../Character/CharacterBody2D".position.x
	if h == true:
		$Path2D/PathFollow2D.progress += 300*delta
		$Path2D/PathFollow2D/AnimatedSprite2D.play("T")
		$Path2D/PathFollow2D/AnimatedSprite2D2.play("T")
		q == true


func _on_camera_follower_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		c = true
		h = true


func _on_camera_follower_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		c = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://dorminter.tscn")


func _on_hamdfgtdrain_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if q == true:
			get_tree().change_scene_to_file("res://resetter_cycle.tscn")
