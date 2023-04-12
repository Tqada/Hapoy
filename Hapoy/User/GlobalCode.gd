extends Node

var Speed = 48
var Gravity = 600
var DownSpeed = 64
var Jump = 500
var MaxSpeed = 250
var tap = 1
var dead = 0

func _process(delta):
	
	if Input.is_action_just_released("Enter") and tap == 1:
		get_tree().change_scene("res://World/WorldGame.tscn")
		tap += 1
	
	if Input.is_action_just_released("esc"):
		get_tree().quit()
			
	if Input.is_action_just_released("f"):
		OS.window_fullscreen = !OS.window_fullscreen
		
	if Input.is_action_just_released("r"):
		get_tree().reload_current_scene()
