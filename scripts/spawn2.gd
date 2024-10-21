extends Node2D
var pipe = preload("res://nodes/base.tscn");
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.





func _on_timer_timeout() -> void:
	print("hiii");
	var loadBase = pipe.instantiate();	
	loadBase.position = Vector2(get_child(get_child_count()-1).position.x+330, get_child(get_child_count()-1).position.y);
	
	add_child(loadBase); 
