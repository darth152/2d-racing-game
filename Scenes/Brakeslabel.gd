extends Label



func _process(_delta):
	#shows amount of brakes available
	self.text = str(Obstacles.brake)
	
	
func _ready():
	#resets brakes to 0 
	Obstacles.brake = 0


