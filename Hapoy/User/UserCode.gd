extends KinematicBody2D

var on_floor = Vector2(0, -1)
var vel = Vector2()
var LeftMove = false

func _physics_process(delta):
	
	if LeftMove == false and $Animated.scale.x <= 1:
		$Animated.scale.x += 0.6
		
	if LeftMove == true and $Animated.scale.x >= -1:
		$Animated.scale.x -= 0.6
		
	if $Animated.scale.x <= -1:
		$Animated.scale.x = -1
		
	if $Animated.scale.x >= 1:
		$Animated.scale.x = 1

	if Input.is_action_pressed("jump") and is_on_floor():
		vel.y -= GlobalCode.Jump + 0.555
		$Animated.speed_scale = 0.8

	if Input.is_action_pressed("left") and vel.x >= -GlobalCode.MaxSpeed:
		vel.x -= GlobalCode.Speed + 0.555 
		$Animated.speed_scale = 1
		LeftMove = false

	elif Input.is_action_pressed("right") and vel.x <= GlobalCode.MaxSpeed:
		vel.x += GlobalCode.Speed + 0.555
		$Animated.speed_scale = 1
		LeftMove = true

	else:
		vel.x -= vel.x/GlobalCode.DownSpeed
		$Animated.speed_scale = 0.8

	if vel.y <= GlobalCode.Gravity:
		vel.y += 40
		
	vel = move_and_slide(vel,on_floor)
