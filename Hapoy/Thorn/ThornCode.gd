extends Area2D


func _on_Thorn_body_entered(body):
	get_tree().reload_current_scene()
	GlobalCode.dead += 1
