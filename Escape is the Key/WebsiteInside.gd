extends TextureRect

var firstPress = true
var secondPress = false
var new_dialog = Dialogic.start('On Buy Button')
var new_dialog2 = Dialogic.start('On Buy Again')

func _ready():
	set_process_input(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var count = 0

func _on_BuyNow_pressed():
	count = count + 1
	$Counter.text = str(count)
	
	if firstPress == true:
		var new_dialog = Dialogic.start('On Buy Button')
		add_child(new_dialog)
		firstPress = false
		secondPress = true
	if secondPress == true:
		var new_dialog = Dialogic.start('On Buy Again')
		add_child(new_dialog2)
		secondPress = false
