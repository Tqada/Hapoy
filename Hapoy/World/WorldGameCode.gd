extends Node2D

var timer = 300
var gameend = false

func _process(delta):
	$Camera.rotation_degrees += 1
	$BackGround/Info.text = str("Dead = ", GlobalCode.dead)
	$BackGround/Info/InfoTime.text = str("Timer = ", timer)
	
	if timer == 0:
		gameend = true
	
	if gameend == true:
		$BackGround/Info/InfoTime.text = str("Game End = You is Good Boy")
		$BackGround/Info.text = str("lol")
	
func _on_Timer_timeout():
	if gameend == false:
		timer -= 1
