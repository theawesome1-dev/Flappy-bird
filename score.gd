extends Label

var score = 0;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text =  str(score);
	#print(score);


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("score"):
		score = score +1;
	 # Replace with function body.
