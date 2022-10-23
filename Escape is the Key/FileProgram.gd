extends Control
var pressed = false
var doublePressed = false
var new_dialog6 = Dialogic.start("Not Working")
var new_dialog7 = Dialogic.start("Still Not")
signal emitting_node

func _on_exitWindow_pressed():
	visible = false
	
func _escapePressed():
	pressed = true
	
func _doublePressed():
	doublePressed = true

func _on_escapeButton_pressed():
	if pressed == true:
		add_child(new_dialog6)
	if doublePressed == true:
		yield(get_tree().create_timer(2), "timeout")
		emit_signal("emitting_node")
		visible = false
		get_node("/root/Desktop/rocksFalling2").play("rocks falling")
		Global.camera.shake(2,10)
		yield(get_tree().create_timer(2), "timeout")
		add_child(new_dialog7)
	
