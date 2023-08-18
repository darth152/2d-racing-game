extends Area2D


func _process(_delta):
	#makes the obstacles constantly move
	position.y += Obstacles.SPEED
	
	#speeds up at 10 points
	if Obstacles.score > 10:
		position.y += 1
		
	#speeds up the brakes pickup at 20 points
	if Obstacles.score > 20:
		position.y += 1
		
	#speeds up the brakes pickup at 30 points
	if Obstacles.score > 30:
		position.y += 1
		
	#speeds up the brakes pickup at 40 points
	if Obstacles.score > 40:
		position.y += 1
	
	#speeds up at 50 points
	if Obstacles.score > 50:
		position.y += 1
	
	#speeds up at 60 points
	if Obstacles.score > 60:
		position.y += 1
	
	#speeds up at 70 points
	if Obstacles.score > 70:
		position.y += 1
	
	#speeds up at 80 points
	if Obstacles.score > 80:
		position.y += 1
	
	#speeds up at 90 points
	if Obstacles.score > 90:
		position.y += 1
	
	#speeds up at 100 points
	if Obstacles.score > 100:
		position.y += 1
	
	#makes the obstacles move faster with the track when accelerating
	if Input.is_action_pressed("drive_forward"):
		if Obstacles.boosting == false && Obstacles.braking == false:
			position.y += 5 
		
	#makes the obstacles move right with the track when steering
	if Input.is_action_pressed("steer_right"):
		position.x += -4
		
	#makes the obstacles move right with the track when steering
	if Input.is_action_pressed("steer_left"):
		position.x += 4
	
	#makes the obstacles move faster with the track when boosting
	if Obstacles.boosting == true:
		position.y += 12
	
	#makes the obstacles move slower with the track when decelerating
	if Obstacles.braking == true:
		position.y += -3


#makes the obstacles delete when not seen
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
