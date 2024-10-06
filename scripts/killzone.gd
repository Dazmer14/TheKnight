extends Area2D

@onready var timer = $Timer
@onready var animation_player = $AnimationPlayer


func _on_body_entered(body):#since only player enters killzone,body= player
	print("You Died!")
	Engine.time_scale=0.5
	body.get_node("player").queue_free()
	body.rotate(-0.785)
	animation_player.play("hurt")
	
	
	timer.start()

func _on_timer_timeout():
	Engine.time_scale=1
	get_tree().reload_current_scene()
