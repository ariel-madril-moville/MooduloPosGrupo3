extends Node2D

class_name Mamifero

@export var cor:String
@export var tamanho:float
@export var peso: float
@export var fala:String
@export var velocidade:float = randf_range(5.0, 5.5)
@export var raca:String
@export var possocorrer = false
	
func _process(delta):
	if(possocorrer == true):
		possoAndar()
	pass

func possoAndar():
	position += Vector2(velocidade,0)

func Correr():
	possocorrer = true
	pass # Replace with function body.


func Parar():
	possocorrer = false
	pass # Replace with function body.
