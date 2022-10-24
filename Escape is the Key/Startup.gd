extends Node2D

func _on_TextureButton_pressed():
	SceneTransition.change_scene("res://Main Screen.tscn")


func _on_LineEdit_text_entered(new_text):
	if new_text == "cheese":
		SceneTransition.change_scene("res://Main Screen.tscn")
