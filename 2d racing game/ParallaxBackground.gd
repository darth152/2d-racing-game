extends ParallaxBackground

onready var nostimer = get_node("usenosTimer")
onready var braketimer = get_node("usebrakeTimer")


func _ready():
	Obstacles.boosting = false
	Obstacles.braking = false

func _process(_delta):
	#makes car costantly move (idle)
	scroll_offset.y += Obstacles.SPEED
	
	#makes car speed up at 10 points
	if Obstacles.score > 10:
		scroll_offset.y += 1
	
	#makes car speed up at 20 points
	if Obstacles.score > 20:
		scroll_offset.y += 1
	
	#makes car speed up at 30 points
	if Obstacles.score > 30:
		scroll_offset.y += 1
	
	#makes car speed up at 40 points
	if Obstacles.score > 40:
		scroll_offset.y += 1
	
	#makes car speed up at 50 points
	if Obstacles.score > 50:
		scroll_offset.y += 1
	
	#makes car speed up at 60 points
	if Obstacles.score > 60:
		scroll_offset.y += 1
	
	#makes car speed up at 70 points
	if Obstacles.score > 70:
		scroll_offset.y += 1
		
	#makes car speed up at 80 points
	if Obstacles.score > 80:
		scroll_offset.y += 1
	
	#makes car speed up at 90 points
	if Obstacles.score > 90:
		scroll_offset.y += 1
	
	#makes car speed up at 100 points
	if Obstacles.score > 100:
		scroll_offset.y += 1
	
	#Speeds car up when pressing driving
	if Input.is_action_pressed("drive_forward"):
		if Obstacles.boosting == false && Obstacles.braking == false:
			scroll_offset.y += 5  
	
	#Steers car right
	if Input.is_action_pressed("steer_right"):
		scroll_offset.x += -4
	
	#steers car left
	if Input.is_action_pressed("steer_left"):
		scroll_offset.x += 4
	
	#makes timer run when boosting
	if Input.is_action_just_pressed("boost") && Obstacles.boost > 0 && Obstacles.boosting == false && Obstacles.braking == false:
		nostimer.wait_time = 3
		nostimer.start()
		if nostimer.time_left > 0:
			Obstacles.boosting = true
		elif nostimer.time_left == 0:
			Obstacles.boosting = false
	#makes car speed up when boosting
	if Obstacles.boosting == true:
		scroll_offset.y += 12
	
	#makes timer run when braking
	if Input.is_action_just_pressed("brakes") && Obstacles.brake > 0 && Obstacles.boosting == false && Obstacles.braking == false:
		braketimer.wait_time = 3
		braketimer.start()
		if braketimer.time_left > 0:
			Obstacles.braking = true
		elif braketimer.time_left == 0:
			Obstacles.braking = false
	#makes car slow down when braking
	if Obstacles.braking == true:
		scroll_offset.y += -3

#stops boost on timer timeout
func _on_usenosTimer_timeout():
	Obstacles.boosting = false
	Obstacles.boost += -1

#stops brakes on timer timeout
func _on_usebrakeTimer_timeout():
	Obstacles.braking = false
	Obstacles.brake += -1
