extends TextureButton
var website = false
var note = false
var paint = false
var recycle = false
var file = false

func _onWebsiteRead():
	$checkbox3.animation = "checked"
	website = true

func _onNoteRead():
	$checkbox2.animation = "checked"
	note = true
	
func _onPaintRead():
	$checkbox1.animation = "checked"
	paint = true
	
func _onRecycleRead():
	$checkbox5.animation = "checked"
	recycle = true
	
func _onFileRead():
	$checkbox4.animation = "checked"
	file = true
	
func _process(delta):
	if website == true and note == true and paint == true and recycle == true and file == true:
		$complete.visible = true
		website = false
		note = false
		paint = false
		recycle = false
		file = false
