extends Area2D
class_name  HurtboxComponent

@export var healt_component: Node

func _ready():
	area_entered.connect(on_area_entered)
	

func on_area_entered(other_area: Area2D):
	if not other_area is HitboxComponent:
		return
	
	if healt_component == null:
		return
	
	
	var hitbox_component = other_area as HitboxComponent
	healt_component.damage(hitbox_component.damage)
