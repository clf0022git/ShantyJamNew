extends Control

var new_dialog3 = Dialogic.start('Click File')
var new_dialog4 = Dialogic.start('No File')
var checkForFile = false
var playerControl = false

func _on_Paint_pressed():
	if playerControl == true:
		$CanvasLayerPaint/PaintProgram.visible = true
	if checkForFile == true:
		add_child(new_dialog4)
	
func _on_Notepad_pressed():
	if playerControl == true:
		$CanvasLayerNote/NotepadProgram.visible = true
	if checkForFile == true:
		add_child(new_dialog4)

func _process(delta):
	if Input.is_action_pressed("press_escape") == true:
		print("Escape pressed")
		$CanvasLayerWin/winScreen.visible = true

func _checkForFile():
	checkForFile = true

func _on_Files_pressed():
	if checkForFile == true:
		add_child(new_dialog3)
		checkForFile = false
