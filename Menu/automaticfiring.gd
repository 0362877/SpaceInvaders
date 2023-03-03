extends CheckButton


func _ready():
	pass # Replace with function body.


func _on_automaticfiring_pressed():
	GlobalVariables.automaticfiring = pressed
	print (pressed)
