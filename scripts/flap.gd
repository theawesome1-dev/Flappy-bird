extends CharacterBody2D
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")+100;
var  jump = -340;
var dead = false;
signal gameover;
var startGame = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	$AnimatedSprite2D.play();
	if startGame == true:
		velocity.y += gravity * delta #sets velocity
	if Input.is_action_just_pressed("jump") && dead == false:
		velocity.y = jump; #jump
		startGame = true; 
	move_and_slide(); 
	if(dead == true):
		rotation = 45;
		$AnimatedSprite2D.pause(); 

#checks for death signal
func _on_area_2d_area_entered(area: Area2D) -> void:
	print("hi");
	if area.is_in_group("pipe"):
			dead = true;
			emit_signal("gameover");
			print("omgcool");
