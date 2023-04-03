extends Sprite

var angular_speed = PI
var speed = 400.0

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT.rotated(rotation) * speed
		
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT.rotated(rotation) * speed
	position += velocity * delta
