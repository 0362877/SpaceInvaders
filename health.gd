extends Node

var health = 0
export(int) var max_health = 3

func _ready():
health = max_health

func take_damage(amount)
