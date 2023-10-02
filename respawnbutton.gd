extends Button

var stage = load("res://teststage.tscn")

func _on_pressed():
	var instance = stage.instantiate()
	get_parent().get_parent().add_child(instance)
	get_parent().queue_free()
	pass # Replace with function body.
