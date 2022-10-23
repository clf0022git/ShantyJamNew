extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_TrashCan_mouse_entered():
	$Moe.play("Getting Angry")
	
func _on_TrashCan_mouse_exited():
	$Moe.play("default")



	
	
