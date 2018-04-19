extends Camera

const UP = Vector3(0, 1, 0)
const camera_speed = 0.5

func _physics_process(delta):
	
	var speed = delta * camera_speed
	
	var xform = get_transform()
	var upangle = acos(-xform.basis[2].dot(UP))
	
	if Input.is_key_pressed(KEY_LEFT):
		translation += xform.basis[0] * speed * sin(upangle)
	if Input.is_key_pressed(KEY_RIGHT):
		translation -= xform.basis[0] * speed * sin(upangle)
	if Input.is_key_pressed(KEY_DOWN):
		translation += xform.basis[1] * speed
	if Input.is_key_pressed(KEY_UP):
		translation -= xform.basis[1] * speed
	
	look_at(Vector3(), UP)
