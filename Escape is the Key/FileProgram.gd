extends Control
var pressed = false
var doublePressed = false
var infoVisible = false
var new_dialog6 = Dialogic.start("Not Working")
var new_dialog7 = Dialogic.start("Still Not")
var new_dialog = Dialogic.start("Click Escape")
var new_dialog2 = Dialogic.start("Click Among File")
var new_dialog3 = Dialogic.start("StopAccess")
var speak = false

func _smhoAllows():
	speak = true

func _on_exitWindow_pressed():
	visible = false
	
func _escapePressed():
	pressed = true
	
func _doublePressed():
	doublePressed = true
	add_child(new_dialog3)


func _on_escapeButton_pressed():
	if pressed == true:
		add_child(new_dialog6)
	if doublePressed == true:
		yield(get_tree().create_timer(2), "timeout")
		visible = false
		get_node("/root/Desktop/rocksFalling2").play("rocks falling")
		Global.camera.shake(2,10)
		yield(get_tree().create_timer(2), "timeout")
		add_child(new_dialog7)
	if speak == true:
		add_child(new_dialog)
	


func _on_displayInfo_pressed():
	infoVisible = not infoVisible
	if infoVisible == true:
		$FileExplorer/information.visible = true
	elif infoVisible == false:
		$FileExplorer/information.visible = false


func _on_doNotButton_pressed():
	if speak == true:
		add_child(new_dialog2)
