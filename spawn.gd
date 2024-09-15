extends Node2D
var pipe = preload("res://nodes/pipes.tscn");
var speed = -3;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass#print($Timer.time_left);
		#$Timer.wait_time = 5;
	


func _on_timer_timeout() -> void:
	var loadPipe = pipe.instantiate();
	loadPipe.position = Vector2(200, randf_range(-250,-120));
	add_child(loadPipe); 


func _on_character_body_2d_gameover() -> void:
	speed = 0;   # Replace with function body.
