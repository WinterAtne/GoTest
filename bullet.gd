extends Area2D
const speed = 1600

@onready var direction = position.direction_to(get_global_mouse_position())



func _process(delta):
	position += direction * speed * delta
