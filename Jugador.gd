extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var canion:Sprite= $canion
var contenedorBala:Node
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func setContenedor(contenedor:Node):
	canion.contenedorBala = contenedor
	contenedorBala = contenedor

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("ui_left")):
		position.x += 10
	if (Input.is_action_pressed("ui_right")):
		position.x -= 10
	
	var mouse_position:Vector2 = get_global_mouse_position()	
	canion.look_at(mouse_position)
	
	if (Input.is_action_just_pressed("click")):
		canion.disparar()
#	pass
