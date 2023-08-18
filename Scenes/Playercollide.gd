extends KinematicBody2D



func _on_Area2D_area_entered(area):
	#send player to startscreen on collision with obstacle
	if area.is_in_group("obstacles"):
		var error = get_tree().change_scene("res://Scenes/Startscreen.tscn")
		if error != 0:
			queue_free()
		queue_free()
