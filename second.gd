extends Node2D

var second = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if second == true:
		$"../Character/Camera2D".position.x = $"../Character/CharacterBody2D".position.x



func _on_cameragye_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		second = true


func _on_cameragye_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		second = false


func _on_next_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../Character/CharacterBody2D".position = Vector2(9000,-220)
		$"../Character/Camera2D".position = Vector2(10000,0)
