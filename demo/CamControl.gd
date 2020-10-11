extends Camera

const UP = Vector3(0, 1, 0)
export var camera_speed = 0.5

var temp_translation;

func _ready():
	temp_translation = translation

func _physics_process(delta):
	
	var speed = delta * camera_speed
	
	var xform = get_transform()
	var upangle = acos(-xform.basis[2].dot(UP))
	
	if Input.is_key_pressed(KEY_A):
		temp_translation += xform.basis[0] * speed * sin(upangle)
	if Input.is_key_pressed(KEY_D):
		temp_translation -= xform.basis[0] * speed * sin(upangle)
	if Input.is_key_pressed(KEY_S):
		temp_translation += xform.basis[1] * speed
	if Input.is_key_pressed(KEY_W):
		temp_translation -= xform.basis[1] * speed
	
	translation = translation.linear_interpolate(temp_translation, 0.3)
	
	look_at(Vector3(), UP)
