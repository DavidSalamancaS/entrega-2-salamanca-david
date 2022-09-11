extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var balasEscena:PackedScene
# Called when the node enters the scene tree for the first time.
onready var posicion: Position2D = $disparar
var contenedorBala:Node
func disparar():
	var balas:Balas = balasEscena.instance()
	balas.connect("eliminar", self, "eliminarNodo")
	contenedorBala.add_child(balas)
	balas.set_starting_values(posicion.global_position, (posicion.global_position - global_position).normalized())

func eliminarNodo(Balas):
	contenedorBala.remove_child(Balas)
	Balas.queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	
#	pass
