extends Area2D

var speed = 5

func _process(delta):
	speed += 0.01
	position.x += speed

func _on_Left_body_exited(body):
	speed = 5
	$Animated.flip_h = false

func _on_Right_body_entered(body):
	speed = -5
	$Animated.flip_h = true

func _on_Deer_body_entered(body):
		get_tree().reload_current_scene()
		GlobalCode.dead += 1
