extends KinematicBody2D

var speed = 1600

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("w_up"):
		direction.y -= 1
		
	if Input.is_action_pressed("s_down"):
		direction.y += 1
		
	move_and_slide(direction * speed)
