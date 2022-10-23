extends Control

var new_dialog3 = Dialogic.start('Click File')
var new_dialog4 = Dialogic.start('No File')
var new_dialog5 = Dialogic.start('File Explorer')
var checkForFile = false
var playerControl = false
var fileAccess = false
var smhoDialog = false

func _ready():
	get_node("/root/Desktop/DesktopIcons/CanvasLayerFile/FileProgram").connect("emitting_node", self,"_fileAccessible")

func _process(delta):
	if playerControl == true:
		if Input.is_action_pressed("press_escape") == true:
			print("Escape pressed")
			$CanvasLayerWin/winScreen.visible = true

func _checkForFile():
	checkForFile = true

func _fileAccessible():
	fileAccess = false
	
func _fileIconChosen():
	fileAccess = true

func _allowPlayerControl():
	playerControl = true
	smhoDialog = true

func _on_Files_pressed():
	if checkForFile == true:
		add_child(new_dialog3)
		checkForFile = false
	if fileAccess == true:
		$CanvasLayerFile/FileProgram.visible = true
		add_child(new_dialog5)
		
	if playerControl == true:
		$CanvasLayerFile/FileProgram.visible = true
		
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
	
func _on_Explorer_pressed():
	if playerControl == true:
		$CanvasLayerExplorer/ExplorerProgram.visible = true
	if checkForFile == true:
		add_child(new_dialog4)

func _on_Recycle_Bin_pressed():
	if playerControl == true:
		$CanvasLayerRecycle/RecycleProgram.visible = true
	if checkForFile == true:
		add_child(new_dialog4)
