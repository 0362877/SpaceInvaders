extends CheckButton



func _ready():
	pass # Replace with function body.


func _on_singleLife_pressed():
	GlobalVariables.singleLife = pressed
	print (pressed)
