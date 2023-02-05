extends Obstacle


func _ready() -> void:
	jump_velocity = randf_range(-89000, -40000)
	super._ready()


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if not has_jumped:
		has_jumped = true
		velocity.y = jump_velocity * delta

	velocity.x = speed * delta
	sprite.rotation = velocity.angle()
	move_and_slide()
