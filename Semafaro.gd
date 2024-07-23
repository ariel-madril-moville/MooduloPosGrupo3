extends Node2D

@export var semafaroVerde = false
@onready var sinalVerde = $"../cpVerde"
@onready var sinalVermelho = $"../cpVermelho"

signal farolFicouVerde
signal  farolFicouVermelho

func _process(delta):
	if(semafaroVerde):
		ficarVerde()
		sinalVermelho.visible = true
		sinalVerde.visible = false
	else:
		ficarVermelho()
		sinalVermelho.visible = false
		sinalVerde.visible = true

func ficarVerde():
	farolFicouVerde.emit()
	pass

func ficarVermelho():
	farolFicouVermelho.emit()
	pass


func AcionarBotao():
	semafaroVerde= !semafaroVerde
	pass # Replace with function body.
