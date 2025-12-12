extends Node2D
var v = false
var t = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if v == true:
		$"../Monster/Path2D/PathFollow2D".progress += 460 * delta


func _on_fourext_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../Character/CharacterBody2D".position = Vector2(14000, 150)
		$"../Character/Camera2D".position = Vector2(14000, 0)
		v = false
		


func _on_fourent_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../Character/CharacterBody2D".position = Vector2(11000, 150)
		$"../Character/Camera2D".position = Vector2(10000, 0)


func _on_uub_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		v = true
		$Coins/AnimatedSprite2D.play("N")
		$Hand_Kill.play("N")
		$"../Monster/Path2D/PathFollow2D/AnimatedSprite2D".play("default")


func _on_huh_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		v = false
		$"../Monster/Path2D/PathFollow2D".progress = 0
		$Coins/AnimatedSprite2D.play("Coin")
		$Hand_Kill.play("Kill")
		$"../Monster/Path2D/PathFollow2D/AnimatedSprite2D".play("new_animation")
		$"../Third/Node2D".position.y = 0




		


func _on_stopperfor_4_area_entered(area: Area2D) -> void:
	if area is Area2D:
		v = false
		$"../Monster/Path2D/PathFollow2D".progress = 0
		$Coins/AnimatedSprite2D.play("Coin")
		$Hand_Kill.play("Kill")
		$"../Monster/Path2D/PathFollow2D/AnimatedSprite2D".play("new_animation")
		$"../Third/Node2D".position.y = 10000
		$"../Monster".position.y = 10000
