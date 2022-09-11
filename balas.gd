extends Sprite

class_name Balas
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var trayecto:Vector2
signal eliminar(Balas)
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)

func set_starting_values(posicionInicial:Vector2, trayecto:Vector2):
	global_position = posicionInicial
	self.trayecto = trayecto
	$Timer.start()
	set_physics_process(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += trayecto*250*delta
#	pass	


func _on_Timer_timeout():
	emit_signal("eliminar",self)
	pass # Replace with function body.
