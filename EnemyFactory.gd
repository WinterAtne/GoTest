extends Timer

var enemy = load("res://enemy.tscn")
@onready var player = get_node("../Player")
const minDistFromPlayer = 2400
const maxDistFromPlayer = 7500
var reduction : float = 0.05
var minTimeBetweenSpawns : float = 0.75


func _on_timeout():
	if (wait_time > minTimeBetweenSpawns):
		wait_time -= reduction
	var instance = enemy.instantiate()
	var distFromPlayer = randf_range(minDistFromPlayer, maxDistFromPlayer)
	var angle = randf_range(0, TAU)
	instance.position = Vector2(distFromPlayer * cos(angle) + player.position.x, distFromPlayer * sin(angle) + player.position.y)
	add_child(instance)


func _on_player_tree_exiting():
	for child in get_children():
		child.queue_free
	queue_free()
