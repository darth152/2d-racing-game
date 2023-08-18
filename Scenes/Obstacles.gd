extends Node2D

#preloads obstacles
var conescene = preload("res://Scenes/Cone.tscn")
var tirestackscene = preload("res://Scenes/Tirestack.tscn")
var rollingtirescene = preload("res://Scenes/Rollingtire.tscn")
var nosscene = preload("res://Scenes/Nos.tscn")
var brakesscene = preload("res://Scenes/Brakes.tscn")
#create variables for score, boost and brakes
var score = 0
var brake = 0
var boost = 0
var boosting = false
var braking = false
#sets a base speed for track and obstacles
const SPEED = 3

#spawns cone
func _on_ConeTimer_timeout():
	var cone = conescene.instance()
	cone.position = Vector2(rand_range(20, 1000), -30)
	add_child(cone)

#spawns tirestack
func _on_TirestackTimer_timeout():
	var tirestack = tirestackscene.instance()
	tirestack.position = Vector2(rand_range(20, 1000), -30)
	add_child(tirestack)

#spawns rollingtire
func _on_RollingtireTimer_timeout():
	var rollingtire = rollingtirescene.instance()
	rollingtire.position = Vector2(rand_range(20, 1000), -30)
	add_child(rollingtire)


func _on_NosspawnTimer_timeout():
	var nos = nosscene.instance()
	nos.position = Vector2(rand_range(20, 1000), -30)
	add_child(nos)


func _on_BrakespawnTimer_timeout():
	var brakes = brakesscene.instance()
	brakes.position = Vector2(rand_range(20, 1000), -30)
	add_child(brakes)
