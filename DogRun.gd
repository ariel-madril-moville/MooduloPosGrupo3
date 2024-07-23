extends Node2D
@onready var listaCachorros = [$Cachorro_A,$Cachorro_B,$Cachorro_C]
@onready var faixaChegada = $Faixa
@onready var visor = $lblVisor
@onready var vl_Saldo = $txtEditSaldo
@onready var vl_Aposta = $txtEditAposta
@onready var visor2 = $lblPainel3
@export var farol = false
var velocidadeCachoros = [randf_range(5.0, 5.5),randf_range(5.0, 5.5),randf_range(5.0, 5.5)]
var valor = 0
var v1:float
var v2:float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	AtualizacaoCachorro()
	pass

func AtualizacaoCachorro():
	if(farol && float(vl_Saldo.text)>=20 && float(vl_Aposta.text)>=1.0):
		if(float(vl_Saldo.text) >= float(vl_Aposta.text)):
			for i in listaCachorros.size():
				listaCachorros[i].position += Vector2(velocidadeCachoros[i],0)
				AvaliarVencedor(i)
				print(velocidadeCachoros[i])
		else:
			visor.text = "O valor do Saldo é inferior o da Aposta!!! "
	else:
		farol = false
		#visor.text = "Os valores não correspondem!!! "

func AvaliarVencedor(i):
	valor += 0.01
	if(listaCachorros[i].position >= Vector2(988.1,0)):
		CalculoAposta()
		farol = false
		visor.text = "O dog vencedor é: " + str(listaCachorros[i])
		

func CalculoAposta():
	v1=float(vl_Saldo.text)
	v2=float(vl_Aposta.text)
	v1 -= v2
	v2 *= valor
	print("Valor: ", valor)
	print("Saldo Anterior: ", v1)
	print("Saldo após Vitoria: ", v2+v1)
	visor2.text = "O saldo atual com bônus da Aposta é R$ " + str(v2+v1)

func Iniciar():
	visor.text=""
	farol = !farol
	pass # Replace with function body.

func Parar():
	visor.text=""
	farol = false
	pass # Replace with function body.
