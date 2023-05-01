extends Control

onready var video_player = $VideoPlayer

func _ready():
	set_process(true)

func _process(delta):
	if not video_player.is_playing():
		video_player.play()
