extends Area2D

@export var speed = -3;
@export var del: int = -500;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#gets signal from bird
	var bird =  get_node("/root/game scene/bird")
	print(bird);
	bird.gameover.connect(self._on_character_body_2d_gameover);
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed;
	if (position.x < del):
		queue_free(); #deletes pipe after it goes off screen
func _on_character_body_2d_gameover() -> void:
	speed = 0;   #speed = zero on death
