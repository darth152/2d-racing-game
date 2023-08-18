extends Label



func _process(_delta):
	#shows amount of boosts available
	self.text = str(Obstacles.boost)
	
	
func _ready():
	#resets boosts to 0 
	Obstacles.boost = 0


