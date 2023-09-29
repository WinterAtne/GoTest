extends Timer

var enemy = load("res://enemy.tscn")
@onready var player = get_node("../Player").get_position()
const minDistFromPlayer = 1000
const maxDistFromPlayer = 6000


func _on_timeout():
	var instance = enemy.instantiate()
	var distFromPlayer = randf_range(minDistFromPlayer, maxDistFromPlayer)
	var angle = randf_range(0, TAU)
	instance.position = Vector2(distFromPlayer * cos(angle), distFromPlayer * sin(angle))
	add_child(instance)


func _on_player_tree_exiting():
	for child in get_children():
		child.queue_free
	queue_free()
