extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var w_pressed = false
var a_pressed = false
var s_pressed = false
var d_pressed = false

var up_pressed = false
var down_pressed = false
var right_pressed = false
var left_pressed = false

var yaw = deg2rad(200)
var pitch = deg2rad(-30)
# Called when the node enters the scene tree for the first time.
func _ready():
	set_rotation(Vector3(pitch, yaw, 0))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	var speed = 4
	
	var t = Vector3(0,0,0)

	if w_pressed:
		t.z = -speed
	if s_pressed:
		t.z = speed
	if a_pressed:
		t.x = -speed
	if d_pressed:
		t.x = +speed
			
	translate(delta * t)
	
	var r_speed = 50
	
	if up_pressed:
		pitch += deg2rad(r_speed * delta)
		#rotate_x(deg2rad(r_speed * delta))
	if down_pressed:
		pitch -= deg2rad(r_speed * delta)
		#rotate_x(deg2rad(-r_speed * delta))
	if left_pressed:
		yaw += deg2rad(r_speed * delta)
		#rotate_y(deg2rad(r_speed * delta))
	if right_pressed:
		yaw -= deg2rad(r_speed * delta)
		#rotate_y(deg2rad(-r_speed * delta))
		
	set_rotation(Vector3(pitch, yaw, 0))
	

func _on_Button5_button_down():
	w_pressed = true


func _on_Button5_button_up():
	w_pressed = false


func _on_Button2_button_down():
	a_pressed = true


func _on_Button2_button_up():
	a_pressed = false


func _on_Button3_button_down():
	d_pressed = true


func _on_Button3_button_up():
	d_pressed = false


func _on_Button4_button_down():
	s_pressed = true


func _on_Button4_button_up():
	s_pressed = false


func _on_Button_button_down():
	up_pressed = true


func _on_Button_button_up():
	up_pressed = false


func _on_Button6_button_down():
	left_pressed = true


func _on_Button6_button_up():
	left_pressed = false


func _on_Button7_button_down():
	right_pressed = true


func _on_Button7_button_up():
	right_pressed = false


func _on_Button8_button_down():
	down_pressed = true


func _on_Button8_button_up():
	down_pressed = false
