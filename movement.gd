extends Area2D

@export var speed : float = 350


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(get_global_mouse_position())
	
	var direction : Vector2 = Vector2.ZERO
	
	if (Input.is_action_pressed("ui_right")):
		direction += Vector2.RIGHT
	if (Input.is_action_pressed("ui_left")):
		direction += Vector2.LEFT
	if (Input.is_action_pressed("ui_up")):
		direction += Vector2.UP
	if (Input.is_action_pressed("ui_down")):
		direction += Vector2.DOWN
	
	position += direction * speed * delta


func _on_area_entered(area):
	if (area.is_in_group("Enemy")):
		print("HIT!")
	pass # Replace with function body.
