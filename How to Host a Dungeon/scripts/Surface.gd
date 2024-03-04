extends Line2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("left_click"):
		if points.size() == 0:
			add_point(get_global_mouse_position())
			add_point(get_global_mouse_position())
		else:
			add_point(get_global_mouse_position())
	
	if points.size() > 0:
		set_point_position(points.size()-1,get_global_mouse_position()) 
	
	if Input.is_action_just_pressed("right_click"):
		clear_points()
