extends Parallax2D

var scroll_x = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Scroll background
	scroll_x += 1 * delta
	scroll_offset.x = scroll_x
	

func _on_character_body_2d_gameover() -> void:
	scroll_offset.x = 0; # Replace with function body.
