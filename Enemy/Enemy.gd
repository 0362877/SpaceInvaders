extends KinematicBody2D

var speed = 0


func _ready():
	set_physics_process(true)

func _physics_process(delta):
	global_position.x += speed * delta
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(2.0, 30.0)
	yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
#need help
