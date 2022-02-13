extends Node2D

onready var Asteroid = load("res://Asteroid/Asteroid.tscn")
var positions = [Vector2(100, 100), Vector2(800, 100), Vector2(500, 500), Vector2(300,200), Vector2(800, 500)]
func _ready():
	pass

func _physics_process(_delta):
	if get_child_count() < 3:
		var asteroid = Asteroid.instance()
		asteroid.position = positions[randi() % positions.size()]
		add_child(asteroid)
