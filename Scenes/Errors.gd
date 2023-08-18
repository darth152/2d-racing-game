extends Node2D

#imports error labels
onready var brakeerror = get_node("BrakeErrorLabel")
onready var boosterror = get_node("BoostErrorLabel")

func _ready():
	#hides error labels on scene entered
	brakeerror.hide()
	boosterror.hide()
	
func _process(_delta):
	#makes brake error appear for 1.5 seconds when necessary
	if Input.is_action_just_pressed("brakes") && Obstacles.brake == 0:
		brakeerror.show()
		yield(get_tree().create_timer(1.5),"timeout")
		brakeerror.hide()
	
	#makes boost error appear for 1.5 seconds when necessary
	if Input.is_action_just_pressed("boost") && Obstacles.boost == 0:
		boosterror.show()
		yield(get_tree().create_timer(1.5),"timeout")
		boosterror.hide()
	
