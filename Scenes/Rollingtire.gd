extends Area2D

#sets the base speed of the tire 
const tireroll = 5

func _process(_delta):
	#makes the tire move a set speed
	position.y += tireroll
	
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
	
	#makes tire speed up when car driving
	if Input.is_action_pressed("drive_forward"):
		if Obstacles.boosting == false && Obstacles.braking == false:
			position.y += 5 
		
	#moves tire to the left when steering right
	if Input.is_action_pressed("steer_right"):
		position.x += -4
		
	#moves tire to the right when steering left
	if Input.is_action_pressed("steer_left"):
		position.x += 4
		
	#makes tire speed up when boosting
	if Obstacles.boosting == true:
		position.y += 12
		
	#makes tire slow down when braking
	if Obstacles.braking == true:
		position.y += -3

#makes tire dissappear when it exits screen
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
