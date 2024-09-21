extends Area2D

var speed;
@export var del: int = -500;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (get_parent().get_parent() != null):
		speed = get_parent().get_parent().speed; 
	else:
		speed = get_parent().speed;
	position += Vector2(speed, 0);
	if (position.x < del):
		queue_free(); #deletes pipe after it goes off screen
	

func _on_area_entered(area: Area2D) -> void:
	pass  
