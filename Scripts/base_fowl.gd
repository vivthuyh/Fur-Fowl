extends Node2D

const speed = 30

var direction = 1

@onready var ray_cast_right = $"RayCast Right"
@onready var ray_cast_left = $"RayCast Left"
@onready var basefowl = $AnimatedSprite2D

func _process(delta):
	if ray_cast_right.is_colliding():
		direction= -1
		basefowl.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		basefowl.flip_h = false
	position.x += direction * speed * delta 
