extends Node3D

var car

# Called when the node enters the scene tree for the first time.
func _ready():
	car = get_node("/root/MainScene/car")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# + self.get_node("Plane").get_aabb().size.z
	if car.position.z > self.position.z:
		self.position.z = self.position.z + 250
