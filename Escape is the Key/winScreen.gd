extends Control

func _on_Yes_pressed():
	SceneTransition.change_scene("res://Resolution.tscn")


func _on_No_pressed():
	visible = false
