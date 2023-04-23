extends CharacterBody2D

@onready var velocity_component = $VelocityComponent

@onready var visuals = $Visuals


func _process(delta):
	velocity_component.accelerate_to_player()
	velocity_component.move(self)
	
	if velocity.x > 0:
		visuals.scale.x = 1
	else:
		visuals.scale.x = -1
