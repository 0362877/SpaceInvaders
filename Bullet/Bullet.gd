extends KinematicBody2D

var speed = 600

func _ready():
	GlobalVariables.bulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, -speed*delta))
	if (collidedObject):
		print(collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			collidedObject.collider.reduceEnemyHealth()
		queue_free()
		GlobalVariables.bulletInstanceCount -= 1
