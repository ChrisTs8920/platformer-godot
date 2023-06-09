extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	Hud.powerup_count += 1
	emit_signal("body_entered")
	$pickup.play()
	$PopupPanel.popup()
	$PopupPanel.visible = true
	$AnimatedSprite2D.hide()
	$CollisionShape2D.set_deferred("disabled", true)
	#queue_free()
