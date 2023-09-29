extends Area2D

var speed : float = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var seekPosition = get_node("../Player").get_position()
	
	position.x = move_toward(position.x, seekPosition.x, speed * delta)
	position.y = move_toward(position.y, seekPosition.y, speed * delta)
	
	look_at(seekPosition)
	
	
	


func _on_area_entered(area):
	if (area.is_in_group("Player")):
		for child in get_children():
			child.queue_free
		queue_free()
	pass # Replace with function body.
