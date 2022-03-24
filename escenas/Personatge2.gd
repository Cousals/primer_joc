extends KinematicBody2D

var velocitat_base = 200 
var direccio = Vector2.DOWN
var velocitat = Vector2.ZERO
var gravetat = Vector2.DOWN * 980
var velocitat_salt = - 300

func _physics_process(delta): 
	velocitat.x = 0 
	velocitat += gravetat * delta
	if Input.is_action_pressed("mou_dreta"): 
		velocitat += Vector2.RIGHT * velocitat_base	
	if Input.is_action_pressed("mou_esquerra"):
		velocitat += Vector2.LEFT * velocitat_base	 
	if Input.is_action_pressed("mou_amunt") and is_on_floor(): 
		velocitat.y = velocitat_salt
	
	velocitat = move_and_slide (velocitat, Vector2.UP) 
	
	velocitat = move_and_slide(velocitat, Vector2.UP)
	animation(velocitat) 
	
func animation(velocitat): 
	if velocitat.x > 0 and velocitat.y > - 2:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	elif velocitat.x < 0 and velocitat.y < - 2:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true
	
	if abs (velocitat.x) < 0.1 and velocitat.y > -1: 
		$AnimatedSprite.play ("quiet")
	
	if velocitat.y < -2: 
		$AnimatedSprite.play("salta")
	
	
func _on_Portal_body_entered(body):
	get_tree ().change_scene("res://escena despres portal.tscn")
