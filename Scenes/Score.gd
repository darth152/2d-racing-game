extends Label



func _process(_delta):
	#displays score
	self.text = str(Obstacles.score)
	
	
func _ready():
	#sets score to 0 on game start
	Obstacles.score = 0


func _on_pointcounter_area_entered(area):
	#adds 1 to score when passing obstacle
	if area.is_in_group("obstacles"):
		Obstacles.score += 1
