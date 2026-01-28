extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
var speed: int = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	animation()
	move_and_slide()

func animation():
	if direction:
		if direction.x > 0:
			$AnimatedSprite2D.animation = "right"
		elif direction.x < 0:
			$AnimatedSprite2D.animation = "left"
		elif direction.y < 0:
			$AnimatedSprite2D.animation = "up"
		elif direction.y > 0:
			$AnimatedSprite2D.animation = "down"
	else:
		$AnimatedSprite2D.frame = 0
