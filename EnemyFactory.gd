extends Timer

var enemy = load("res://enemy.tscn")
@onready var player = get_node("../Player").get_position()
const minDistFromPlayer = 1000
const maxDistFromPlayer = 6000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timeout():
	var instance = enemy.instantiate()
	var distFromPlayer = randf_range(minDistFromPlayer, maxDistFromPlayer)
	var angle = randf_range(0, 2*PI)
	instance.position = Vector2(distFromPlayer * cos(angle), distFromPlayer * sin(angle))
	add_child(instance)
