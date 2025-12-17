extends MarginContainer

var down = 0

func _ready() -> void:
	$AnimatedSprite2D.position = Vector2(130,130)

func set_stream(uri):
	$AudioStreamPlayer.stream = load(uri)

func play():
	$AnimatedSprite2D.visible = true
	$AnimatedSprite2D.play()
	$AudioStreamPlayer.play()


func _on_audio_stream_player_finished() -> void:
	$AnimatedSprite2D.visible = false
	$AnimatedSprite2D.stop()


func _on_texture_button_pressed() -> void:
	play()


func _on_texture_button_button_down() -> void:
	down = Time.get_ticks_msec()


func _on_texture_button_button_up() -> void:
	var up = Time.get_ticks_msec()
	var secs = (up - down) / 1000.0
	if secs > 3:
		download_audio()
		
func download_audio():
	print("download audio!")
	pass
