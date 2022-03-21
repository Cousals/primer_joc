extends KinematicBody2D

var velocitat_base = 200 
var direccio = Vector2.DOWN
var velocitat = Vector2.ZERO
var gravetat = Vector2.DOWN * 980
var velocitat_salt = - 1000

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
	
	
	
