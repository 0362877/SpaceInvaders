extends KinematicBody2D

var speed = 200

func _ready():
	GlobalVariables.enemyBulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, + speed*delta*0.4))
	if (collidedObject): 
		#print ("Enemy collide:", collidedObject.collider. name)
		if "Enemy" in collidedObject.collider.name:
			pass 
			#
		else:
			queue_free()
			GlobalVariables.enemyBulletInstanceCount -= 1
			print ("Enemy Bullets: ", GlobalVariables.enemyBulletInstanceCount)
