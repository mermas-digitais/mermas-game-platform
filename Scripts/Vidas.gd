extends Control

var tamanhoVida=32

func on_change_vida(vidas):
	$vida1.rect_size.x = vidas * tamanhoVida
