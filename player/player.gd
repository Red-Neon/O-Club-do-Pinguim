extends KinematicBody2D

const MOTION_SPEED = 90.0


func _physics_process(_delta):
	var motion = Vector2()

	if is_network_master():
		if Input.is_action_pressed("move_left"):
			$AnimatedSprite.play('side')
			$AnimatedSprite.flip_h = false
			motion += Vector2(-1, 0)
		if Input.is_action_pressed("move_right"):
			$AnimatedSprite.play('side')
			$AnimatedSprite.flip_h = true
			motion += Vector2(1, 0)
		if Input.is_action_pressed("move_up"):
			$AnimatedSprite.play('up')
			motion += Vector2(0, -1)
		if Input.is_action_pressed("move_down"):
			$AnimatedSprite.play('idle')
			motion += Vector2(0, 1)


	# FIXME: Use move_and_slide
	move_and_slide(motion * MOTION_SPEED)



func set_player_name(new_name):
	get_node("label").set_text(new_name)

