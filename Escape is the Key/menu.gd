extends Control

var new_dialog3 = Dialogic.start('Click File')
var new_dialog4 = Dialogic.start('No File')
var checkForFile = false
var playerControl = false

func _on_Paint_pressed():
	
	$CanvasLayerPaint/PaintProgram.visible = true
	if checkForFile == true:
		add_child(new_dialog4)
	
func _on_Notepad_pressed():
	
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
	$CanvasLayerFile/FileProgram.visible = true
	
func _on_Explorer_pressed():
	
	$CanvasLayerExplorer/ExplorerProgram.visible = true
	


func _on_Recycle_Bin_pressed():
	
	$CanvasLayerRecycle/RecycleProgram.visible = true
