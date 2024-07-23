extends Animal

class_name Mamifero

var cor:String
var tamanho:float
var peso: float
var fala:String
var velocidade:float = randf_range(5.0, 5.5)
var raca:String

func _process(delta):
	possoAndar()
	pass
	
func possoAndar():
	position += Vector2(velocidade,0)
	
