extends Control
var new_dialog = Dialogic.start('When Press Recycle')
var infoVisible = false

func _on_exitWindow_pressed():
	visible = false
	


func _on_TrashCan_pressed():
	add_child(new_dialog)


func _on_displayInfo_pressed():
	infoVisible = not infoVisible
	if infoVisible == true:
		$RecycleMenu/information.visible = true
	elif infoVisible == false:
		$RecycleMenu/information.visible = false
