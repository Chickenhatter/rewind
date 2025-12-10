extends Node2D
var c = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if c == true:
		$"../Character/Camera2D".position.y = $"../Character/CharacterBody2D".position.y


func _on_camera_start_body_entered(body: Node2D) -> void:
	c = true
