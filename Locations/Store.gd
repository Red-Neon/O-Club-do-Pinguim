extends Node

func _ready():
	pass


func _on_Area2D_body_entered(_body):
	get_tree().change_scene("res://Locations/Cidade.tscn")


