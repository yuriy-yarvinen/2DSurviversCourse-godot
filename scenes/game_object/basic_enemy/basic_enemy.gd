extends CharacterBody2D

const MAX_SPEED = 40

@onready var health_component: HealthComponent = $HealthComponent
@onready var visuals = $Visuals

func _process(delta):
	var direction = get_direction_to_player()
	velocity = direction * MAX_SPEED
	move_and_slide()
	if velocity.x > 0:
		visuals.scale.x = 1
	else:
		visuals.scale.x = -1


func get_direction_to_player():
	var player_node = get_tree().get_first_node_in_group("player") as Node2D
	if player_node != null:
		return (player_node.global_position - global_position).normalized()
	return Vector2.ZERO
