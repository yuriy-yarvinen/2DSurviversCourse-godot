extends Node

@export var victory_screen: PackedScene

@onready var timer = $Timer


func _ready():
	timer.timeout.connect(on_timer_timeout)


func get_time_elapsed():
	return timer.wait_time - timer.time_left


func on_timer_timeout():
	var victory_screen_istance = victory_screen.instantiate()
	add_child(victory_screen_istance)
