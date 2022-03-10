extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat = Vector2(200,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(300,300)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	$segonsprite.rotation_degrees += 10
	rotation_degrees += 10
	if position.x >= 1024 or position.x <= 0:
		velocitat.x *= -1
	if position.y >= 1024 or position.y <= 0:
		velocitat.y *= -1
	
	
	

