extends Node2D

var new_dialog8 = Dialogic.start('Mo Delete')
var new_dialog9 = Dialogic.start('Smho Enters')
var dialogComplete

func _ready():
	$rocksFalling.play("rocks falling")
	Global.camera.shake(2,10)
	add_child(new_dialog8)
	yield(get_tree().create_timer(2), "timeout")
	$AnimationPlayer.play("MoFlying")
	yield(get_node("AnimationPlayer"), "animation_finished")
	yield(get_tree().create_timer(2), "timeout")
	$AnimationPlayer.play("SmhoFlyIn")
	yield(get_node("AnimationPlayer"), "animation_finished")
	$AudioStreamPlayer.play()
	Global.camera.shake(1,5)
	yield(get_tree().create_timer(1), "timeout")
	add_child(new_dialog9)
	
func _showList():
	$ObjectiveList.visible = true

func _process(delta):
	$AnimationPlayer2.play("Blackhole Spin")


func _on_complete_pressed():
	var new_dialog = Dialogic.start('completeCheckList')
	add_child(new_dialog)
