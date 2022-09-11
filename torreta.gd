extends Sprite


export(PackedScene) var proyectil_Escena:PackedScene
var player
onready var apuntar:Position2D = $apuntar
var contenedorProyectil:Node

func set_values(player, contenedorProyectil):
	self.player = player
	self.contenedorProyectil = contenedorProyectil
	$Timer.start()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body. 

func _on_Timer_timeout():
	fire()
	pass # Replace with function body.
	
func fire():
	var bala:Balas = proyectil_Escena.instance()
	contenedorProyectil.add_child(bala)
	bala.set_starting_values(apuntar.global_position, (player.global_position - apuntar.global_position).normalized())
	bala.connect("eliminar", self, "eliminarBala")
	
func eliminarBala(bala):
	contenedorProyectil.remove_child(bala)
	bala.queue_free()
