extends KinematicBody2D

var motion = Vector2()

func _physics_process(_delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
		motion.y = 0
		$Sprite.play('right')
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
		motion.y = 0
		$Sprite.play('left')
	elif Input.is_action_pressed("ui_up"):
		motion.x = 0
		motion.y = -100
		$Sprite.play('up')
	elif Input.is_action_pressed("ui_down"):
		motion.x = 0
		motion.y = 100
		$Sprite.play('idle')
	else:
		motion.x = 0
		motion.y = 0
	
	move_and_slide(motion)
