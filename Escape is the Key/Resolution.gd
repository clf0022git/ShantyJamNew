extends Node2D
var new_dialog10 = Dialogic.start('Ending 1')
var new_dialog11 = Dialogic.start('Ending 2')
var new_dialog12 = Dialogic.start('Ending 3')

func _ready():
	$AnimationPlayer/crewmate2.position = Vector2(667, -356)
	$AnimationPlayer/crewmate3.position = Vector2(-301, 722)
	$AnimationPlayer/crewmate4.position = Vector2(1076, 1255)
	add_child(new_dialog10)
	
func _end():
	get_tree().quit()
	
func _showAmong():
	$crewmate.visible = true
	add_child(new_dialog11)
	
func _showAmong2():
	$AnimationPlayer.play("AmongUs")
	add_child(new_dialog12)
