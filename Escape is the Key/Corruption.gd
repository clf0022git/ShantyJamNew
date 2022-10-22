extends Node2D

func _ready():
	$rocksFalling.play("rocks falling")
	Global.camera.shake(2,10)
	yield(get_tree().create_timer(2), "timeout")
	$AnimationPlayer.play("MoFlying")

func _process(delta):
	$AnimationPlayer2.play("Blackhole Spin")
