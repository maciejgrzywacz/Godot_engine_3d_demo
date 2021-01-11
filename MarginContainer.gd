extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	$fps_label.text = "FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

