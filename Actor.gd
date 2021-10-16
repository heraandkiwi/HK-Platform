extends KinematicBody2D

class_name Actor

var velocity:Vector2 = Vector2.ZERO
export var gravity = 30.0
export var max_speed:Vector2 = Vector2(300.0,1000.0)

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	velocity.y = min(velocity.y,max_speed.y)
	var x:Vector2  = move_and_slide(velocity)
	print(x)
	
