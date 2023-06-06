extends Node2D


var conescene = preload("res://Scenes/Cone.tscn")
var tirestackscene = preload("res://Scenes/Tirestack.tscn")


func _on_Timer_timeout():
	var cone = conescene.instance()
	cone.position = Vector2(rand_range(20, 1000), -30)
	add_child(cone)


func _on_TirestackTimer_timeout():
	var tirestack = tirestackscene.instance()
	tirestack.position = Vector2(rand_range(20, 1000), -30)
	add_child(tirestack)
