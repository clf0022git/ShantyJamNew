extends Node2D

var mouseMoving = false
var dialogOver = false
var amongus = false
var new_dialog = Dialogic.start('Initial Greeting')
var new_dialog2 = Dialogic.start('Mouse Moved')

func _ready():
	$MoOverworld.position = Vector2(2045,929)
	yield(get_tree().create_timer(2), "timeout")
	$AnimationPlayer.play("Mo")
	yield(get_node("AnimationPlayer"), "animation_finished")
	add_child(new_dialog)
	
func _dialogover():
	dialogOver = true
	mouseMoving = false
	
func _showAmong():
	$crewmate.visible = true
	$MoStare.visible = true
	$MoOverworld.visible = false

func _dialog2over():
	Global.camera.shake(2,10)
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://Corruption.tscn")

func _input(event):
	if event is InputEventMouseMotion and event.relative:
		mouseMoving = true

func _process(delta):
	
	if dialogOver == true and mouseMoving == true:
		add_child(new_dialog2)
