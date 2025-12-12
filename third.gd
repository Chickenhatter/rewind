extends Node2D

var start = false
var stopper = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if stopper == false:
		if start == true:
			$"../Fourth/Path2D/PathFollow2D".progress += 300 * delta



func _on_firts_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/1/AnimatedSprite2D".play("Text")


func _on_firts_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/1/AnimatedSprite2D".play("N")


func _on_infront_third_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../Character/CharacterBody2D".position = Vector2(12000,0)
		$"../Character/Camera2D".position = Vector2(13000,0)
		start = true


func _on_behind_third_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../Character/CharacterBody2D".position = Vector2(7500, 0)
		$"../Character/Camera2D".position = Vector2(7000, 0)


func _on_behind_third_area_entered(area: Area2D) -> void:
	if area.name == "Hand":
		pass


func _on_gui_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/2/AnimatedSprite2D".play("Text")


func _on_gui_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/2/AnimatedSprite2D".play("N")


func _on_g_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/3/AnimatedSprite2D".play("Text")


func _on_g_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/3/AnimatedSprite2D".play("N")

func _on_u_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/4/AnimatedSprite2D".play("Text")


func _on_u_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/4/AnimatedSprite2D".play("N")


func _on_gv_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/5/AnimatedSprite2D".play("Text")


func _on_gv_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/5/AnimatedSprite2D".play("N")


func _on_ygiewf_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/6/AnimatedSprite2D".play("Text")

func _on_ygiewf_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Node2D/6/AnimatedSprite2D".play("N")


func _on_huh_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Node2D.position.y = 0


func _on_stopperfor_4_area_entered(area: Area2D) -> void:
	if area is Area2D:
		stopper = true
