extends Area2D
const speed = 1600
const spread : Vector2 = Vector2(-0.25, 0.25)

@onready var direction = position.direction_to(get_global_mouse_position()) + Vector2(randf_range(spread.x, spread.y), randf_range(spread.x, spread.y))



func _process(delta):
	position += direction * speed * delta
