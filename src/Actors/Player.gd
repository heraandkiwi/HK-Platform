extends Actor

func _physics_process(delta: float) -> void:
	var _horizontal_direction = (
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	)
	velocity.x = _horizontal_direction * speed
	if velocity.y < max_speed.y:
		velocity.y += gravity*delta
	velocity = move_and_slide(velocity,FLOOR_NORMAL)
	
	var _is_jumping := Input.is_action_just_pressed("jump") and is_on_floor()
	
	if _is_jumping:
		jumps_made +=1
		velocity.y = -jump_strength 

