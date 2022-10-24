extends TextureRect

var firstPress = true
var secondPress = false
var new_dialog = Dialogic.start('On Buy Button')
var new_dialog2 = Dialogic.start('Buy Button Again')

func _ready():
	set_process_input(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var count = 0

func _onFirstPress():
	secondPress = true

func _on_BuyNow_pressed():
	count = count + 1
	$Counter.text = str(count)
	
	if firstPress == true:
		add_child(new_dialog)
		firstPress = false
		
	if secondPress == true:
		add_child(new_dialog2)
		secondPress = false
