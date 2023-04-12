extends Node

onready var hit_sfx = $hit_sfx
onready var hover_sfx = $hover_sfx

func _on_play_button_pressed():
	SceneManager.goto_scene("res://RhythmGameDemo.tscn")
	
func _on_about_button_pressed():
	$CanvasLayer/Panel/AnimationPlayer.play("popup")

func _on_exit_button_pressed():
	get_tree().quit()

func _on_play_button_mouse_entered():
	hover_sfx.play()

func _on_about_button_mouse_entered():
	hover_sfx.play()

func _on_exit_button_mouse_entered():
	hover_sfx.play()

func _on_close_button_pressed():
	$CanvasLayer/Panel/AnimationPlayer.play_backwards("popup")
