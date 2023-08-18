extends Sprite

#sets the car's tit to 0
var cartilt = 0

func _process(_delta):
	#tilts the car whilst turning
	if Input.is_action_pressed("steer_right") && !Input.is_action_pressed("steer_left"):
		cartilt = ceil(cartilt+((20-cartilt)/10))
	else:
		cartilt = ceil(cartilt+(0-cartilt)/10)
	if Input.is_action_pressed("steer_left") && !Input.is_action_pressed("steer_right"):
		cartilt = floor(cartilt+((-20-cartilt)/10))
	else:
		cartilt = floor(cartilt+(0-cartilt)/10)
	
	rotation_degrees = cartilt

