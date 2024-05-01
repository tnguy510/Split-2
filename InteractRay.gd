extends RayCast3D

@onready var prompt = $Prompt

# Called when the node enters the scene tree for the first time.
func _ready():
	#add_exception(owner)
	pass


func _physics_process(_delta):
	prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		
		if detected is Interactable:
			prompt.text = detected.get_prompt()
