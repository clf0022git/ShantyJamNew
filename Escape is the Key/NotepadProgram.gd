extends Control
var infoVisible = false

func _on_exitWindow_pressed():
	visible = false
	

func _on_displayInfo_pressed():
	infoVisible = not infoVisible
	if infoVisible == true:
		$NotePadZone/information.visible = true
	elif infoVisible == false:
		$NotePadZone/information.visible = false
