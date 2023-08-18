extends Label

var scoreboard_tracker = ""
var array = []

func _ready():
	#Detection of invaild score
	array.append(Obstacles.score)
	array.append(Scoreboard.scoreboard_tracker)

	#For Loop
	for index in array.size():
		var display = array[index]

		#Detection of invaild score
		if display in [0, null]:
			break
		else:
			text += str(scoreboard_tracker, " ", display)
			Scoreboard.scoreboard_tracker = text
