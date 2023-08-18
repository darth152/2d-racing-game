extends Control


#Sends plyer to actual game when clicked
func _on_TextureButton_pressed():
	var error = get_tree().change_scene("res://Scenes/Startscreen.tscn")
	if error != 0:
		queue_free()
	queue_free()
