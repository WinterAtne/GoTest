extends Area2D
const speed = 2000
const spread : Vector2 = Vector2(-0.12, 0.12)

@onready var direction = position.direction_to(get_global_mouse_position()) + Vector2(randf_range(spread.x, spread.y), randf_range(spread.x, spread.y))

func _ready():
	await get_tree().create_timer(3).timeout
	queue_free()

func _process(delta):
	position += direction * speed * delta
