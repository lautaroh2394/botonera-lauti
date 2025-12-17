extends Panel

static var pink_button: PackedScene = load("res://button_container_pink.tscn")
static var purple_button: PackedScene = load("res://button_container_purple.tscn")
static var blue_button: PackedScene = load("res://button_container_blue.tscn")

var kisses_blown = [
	"res://audios/kiss-blown/beso-1.wav",
	"res://audios/kiss-blown/beso-2.wav",
	"res://audios/kiss-blown/beso-3.wav",
	"res://audios/kiss-blown/beso-4.wav",
	]

var meteor_hits = [
	"res://audios/meteor-hit/heart-hit-1.wav",
	"res://audios/meteor-hit/heart-hit-2.wav",
	"res://audios/meteor-hit/heart-hit-3.wav",
	"res://audios/meteor-hit/heart-hit-4.wav",
	"res://audios/meteor-hit/heart-hit-5.wav",
	"res://audios/meteor-hit/heart-hit-6.wav",
	"res://audios/meteor-hit/heart-hit-7.wav",
	"res://audios/meteor-hit/heart-hit-8.wav",
	"res://audios/meteor-hit/heart-hit-9.wav",
	"res://audios/meteor-hit/heart-hit-10.wav",
	"res://audios/meteor-hit/heart-hit-11.wav",
	"res://audios/meteor-hit/heart-hit-12.wav",
	"res://audios/meteor-hit/heart-hit-13.wav",
	"res://audios/meteor-hit/heart-hit-14.wav",
	"res://audios/meteor-hit/heart-hit-15.wav",
	"res://audios/meteor-hit/heart-hit-16.wav",
	"res://audios/meteor-hit/heart-hit-17.wav",
]

var hits = [
	"res://audios/spaceship-hit/grito-1.wav",
	"res://audios/spaceship-hit/grito-2.wav",
	"res://audios/spaceship-hit/grito-3.wav",
	"res://audios/spaceship-hit/grito-4.wav",
	"res://audios/spaceship-hit/grito-5.wav",
	"res://audios/spaceship-hit/grito-6.wav",
	"res://audios/spaceship-hit/grito-7.wav",
]

func _ready() -> void:
	for kiss in kisses_blown:
		var btn = pink_button.instantiate()
		btn.set_stream(kiss)
		$VBoxContainer/GridContainer.add_child(btn)		
		
	for hit in meteor_hits:
		var btn = purple_button.instantiate()
		btn.set_stream(hit)
		$VBoxContainer/GridContainer.add_child(btn)
		
	for hit in hits:
		var btn = blue_button.instantiate()
		btn.set_stream(hit)
		$VBoxContainer/GridContainer.add_child(btn)
