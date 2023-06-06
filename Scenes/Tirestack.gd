extends Area2D


func _process(delta):
	if Input.is_action_pressed("drive_forward"):
		position.y += 8
	if Input.is_action_pressed("reverse"):
		position.y += -5
	if Input.is_action_pressed("steer_right"):
		position.x += -3
	if Input.is_action_pressed("steer_left"):
		position.x += 3
	if Input.is_action_pressed("drive_forward") && Input.is_action_pressed("boost"):
		position.y += 12


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
