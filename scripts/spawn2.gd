extends Node2D
var pipe = preload("res://nodes/base.tscn");
var speed = -3;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print($"base timer".time_left)
	pass


func _on_character_body_2d_gameover() -> void:
	speed = 0;
	$"base timer".stop();

func _on_timer_timeout() -> void:
	print("hiii");
	var loadPipe = pipe.instantiate();
	loadPipe.position = Vector2(get_child(get_child_count()-1).position.x+330, get_child(get_child_count()-1).position.y);
	add_child(loadPipe); 
