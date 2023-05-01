extends Node

onready var selector_one = $CanvasLayer/Menus/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
onready var selector_two = $CanvasLayer/Menus/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
onready var selector_three = $CanvasLayer/Menus/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector
onready var selector_four = $CanvasLayer/Menus/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer4/HBoxContainer/Selector

var current_selector = 0

onready var hover = $hover_sfx
onready var anim_player = $AnimationPlayer

func _ready():
	set_current_selector(0)
	
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		anim_player.play_backwards("show_tutor")

func set_current_selector(_current_selection) -> void:
	selector_one.text = ""
	selector_two.text = ""
	selector_three.text = ""
	selector_four.text = ""	
	
	if _current_selection == 0:
		selector_one.text = ">"
		hover.play()
	elif _current_selection == 1:
		selector_two.text = ">"
		hover.play()
	elif _current_selection == 2:
		selector_three.text = ">"
		hover.play()
	elif _current_selection == 3:
		selector_four.text = ">"
		hover.play()

func _on_Start_pressed():
	SceneManager.goto_scene("res://RhythmGameDemo.tscn")

func _on_About_pressed():
	anim_player.play("show_about")

func _on_Tutorial_pressed():
	anim_player.play("show_tutor")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Start_mouse_entered():
	hover.play()
	set_current_selector(0)

func _on_About_mouse_entered():
	hover.play()
	set_current_selector(1)

func _on_Tutorial_mouse_entered():
	hover.play()
	set_current_selector(2)

func _on_Exit_mouse_entered():
	hover.play()
	set_current_selector(3)


func _on_CloseAboutPanel_pressed():
	anim_player.play_backwards("show_about")
