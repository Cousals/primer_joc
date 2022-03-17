extends KinematicBody2D

var velocitat_base = 200 
var direccio = Vector2.DOWN

var velocitat = Vector2.ZERO

var gravetat = Vector2.DOWN * 980

func _physics_process(delta): 
	velocitat += gravetat * delta
	move_and_slide (velocitat) 
	
