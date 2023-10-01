extends Node2D

var bullet = preload("res://bullet.tscn")
var shots : int = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in range(0, shots):
		var instance = bullet.instantiate()
		instance.position = get_parent().position
		add_child(instance)
	pass # Replace with function body.
