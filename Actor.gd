extends KinematicBody2D
class_name Actor

const FLOOR_NORMAL := Vector2.UP


export var gravity := 4500.0
export var speed := 600.0
export var jump_strength: = 1500.0
export var double_jump_strength = 1200.0

var jumps_made := 0
var velocity := Vector2.ZERO
var max_speed := Vector2(1000,1500)
