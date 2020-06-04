extends Node2D

func _ready():
	pass 

func _on_PizzaDorr_body_entered(body):
	get_tree().change_scene("res://Cidade.tscn")
