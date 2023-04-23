extends Area2D
class_name  HurtboxComponent

@export var healt_component: Node

var floating_text_scene = preload("res://scenes/ui/floating_text.tscn")

func _ready():
	area_entered.connect(on_area_entered)
	

func on_area_entered(other_area: Area2D):
	if not other_area is HitboxComponent:
		return
	
	if healt_component == null:
		return
	
	
	var hitbox_component = other_area as HitboxComponent
	healt_component.damage(hitbox_component.damage)
	var floating_text_scene_instance = floating_text_scene.instantiate() as Node2D
	get_tree().get_first_node_in_group("foreground_layer").add_child(floating_text_scene_instance)
	floating_text_scene_instance.global_position = global_position
	floating_text_scene_instance.start(str(hitbox_component.damage))
