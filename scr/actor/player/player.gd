extends CharacterBody2D

var p_input = Vector2.ZERO
var speed = 85
func _physics_process(delta: float) -> void:
	
	p_input.x = Input.get_axis("ui_left","ui_right")
	p_input.y = Input.get_axis("ui_up","ui_down")
	
	velocity = velocity.lerp(p_input * speed,0.25)
	
	print(velocity)
	
	move_and_slide()
