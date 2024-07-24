extends Node2D

@onready var vl_Aposta = $txtEditAposta
@onready var visor1 = $lblResultado1
@onready var sinalVerde = $cpVerde
#@onready var visor2 = 
#@onready var visor3 = 

var valor = 0
var v1:float
var v2:float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	VerificarAposta()
	pass

func VerificarAposta():
	if(sinalVerde.visible == false && float(vl_Aposta.text)>=1.0):
		AvaliarVencedor()
	else:
		sinalVerde.visible = true


func AvaliarVencedor():
	valor += 0.01
	#if(listaCachorros[i].position >= Vector2(988.1,0)):
	#	CalculoAposta()
	#	farol = false
	#	visor.text = "O dog vencedor é: " + str(listaCachorros[i])

func CalculoAposta():
	#v1=float(vl_Saldo.text)
	v2=float(vl_Aposta.text)
	v1 -= v2
	v2 *= valor
	print("Valor: ", valor)
	print("Saldo Anterior: ", v1)
	print("Saldo após Vitoria: ", v2+v1)
	#visor2.text = "O saldo atual com bônus da Aposta é R$ " + str(v2+v1)
