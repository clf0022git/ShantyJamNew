extends Control

var infoVisible = false

func _on_Back_pressed():
	visible = false
	$actualWindow/information.visible = false


func _on_info_pressed():
	infoVisible = not infoVisible
	if infoVisible == true:
		$actualWindow/information.visible = true
	elif infoVisible == false:
		$actualWindow/information.visible = false
		

func _hide_canvas():
	$fakeWindow.visible = false
	var new_dialog = Dialogic.start('paintread')
	add_child(new_dialog)
