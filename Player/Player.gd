extends KinematicBody2D

var movement_speed = 200
export (int) var health = 3
var bulletSource = preload("res://Bullet/Bullet.tscn")

func _ready():
	set_process(true) 
	set_physics_process(true)
	GlobalVariables.Player = self

func _process(delta):
	if GlobalVariables.automaticfiring:
		if Input.is_action_pressed("fire"):
			if GlobalVariables.bulletInstanceCount < 10:
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2(position.x, position.y-20)
				get_tree().get_root().add_child(bulletInstance)
				yield(get_tree().create_timer(0.7), "timeout")
	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 1:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
	#if GlobalVariables.singlelife:
		

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		if position.x > 45:
			move_and_collide(Vector2(-movement_speed*delta,0))
	if Input.is_action_pressed("ui_right"):
		if position.x < 1235:
			move_and_collide(Vector2(movement_speed*delta,0))
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -movement_speed*delta))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, movement_speed*delta))

func reduceHealth():
	health -=1
	if health == 0:
		GlobalVariables.Player == null
		get_tree().change_scene("res://MainGame/Game Over.tscn")
