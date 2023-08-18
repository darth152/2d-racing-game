extends Sprite

#sets the wheel's tit to 0
var wheeltilt = 0

func _process(_delta):
	#tilts the wheel whilst turning
	if Input.is_action_pressed("steer_right") && !Input.is_action_pressed("steer_left"):
		wheeltilt = ceil(wheeltilt+((20-wheeltilt)/10))
	else:
		wheeltilt = ceil(wheeltilt+(0-wheeltilt)/10)
	if Input.is_action_pressed("steer_left") && !Input.is_action_pressed("steer_right"):
		wheeltilt = floor(wheeltilt+((-20-wheeltilt)/10))
	else:
		wheeltilt = floor(wheeltilt+(0-wheeltilt)/10)
	
	rotation_degrees = wheeltilt
