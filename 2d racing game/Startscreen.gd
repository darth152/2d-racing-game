extends Control


#Sends Player to Red Scene when clicked
func _on_TextureButtonRed_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackred.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Orange Scene when clicked
func _on_TextureButtonOrange_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackorange.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Yellow Scene when clicked
func _on_TextureButtonYellow_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackyellow.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Green Scene when clicked
func _on_TextureButtonGreen_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackgreen.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Cyan Scene when clicked
func _on_TextureButtonCyan_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackcyan.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Blue Scene when clicked
func _on_TextureButtonBlue_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackblue.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Purple Scene when clicked
func _on_TextureButtonPurple_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackpurple.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Pink Scene when clicked
func _on_TextureButtonPink_pressed():
	var error = get_tree().change_scene("res://Scenes/Trackpink.tscn")
	if error != 0:
		queue_free()
	queue_free()

#Sends Player to Instructions Scene when clicked
func _on_Instructions_pressed():
	var error = get_tree().change_scene("res://Scenes/Instructions.tscn")
	if error != 0:
		queue_free()
	queue_free()
