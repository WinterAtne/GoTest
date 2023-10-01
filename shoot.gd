extends Node2D

var bullet = preload("res://bullet.tscn")
var canShoot : bool = true
const reloadTime = 0.1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("shoot") && canShoot):
		var instance = bullet.instantiate()
		instance.position = get_parent().position
		get_parent().get_parent().add_child(instance)
		canShoot = false
		await get_tree().create_timer(reloadTime).timeout
		canShoot = true 
	pass


