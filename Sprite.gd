extends Sprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat = 300
var velocitat_angular = 90
var direccio = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100,300)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direccio = Vector2.ZERO
	if Input.is_action_pressed ("mou_dreta"):	
		direccio += Vector2.RIGHT
	if Input.is_action_pressed ("mou_esquerra"):	
		direccio += Vector2.LEFT
	if Input.is_action_pressed ("mou_amunt"):	
		direccio += Vector2.UP
	if Input.is_action_pressed ("mou_avall"):	
		direccio += Vector2.DOWN
	position += direccio.normalized() * velocitat * delta
	
	
	 


