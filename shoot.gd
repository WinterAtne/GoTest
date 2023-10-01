extends Node2D

var bullet = preload("res://bullet.tscn")
var shot = preload("res://shot.tscn")
var canShoot : bool = true
const reloadTime1 = 0.15
const reloadTime2 = 0.75

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("shoot") && canShoot):
		var instance = bullet.instantiate()
		instance.position = get_parent().position
		get_parent().get_parent().add_child(instance)
		canShoot = false
		await get_tree().create_timer(reloadTime1).timeout
		canShoot = true
	
	
	pass


