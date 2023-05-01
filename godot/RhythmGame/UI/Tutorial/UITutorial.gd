extends Control

onready var tutorial_1 = $Tutorial1
onready var tutorial_2 = $Tutorial2
onready var tutorial_3 = $Tutorial3
onready var tutorial_4 = $Tutorial4

var current_selection =  0

func _ready():
	clear_selection()
	set_current_selection(0)
	
func clear_selection() -> void:
		tutorial_1.visible = false
		tutorial_2.visible = false
		tutorial_3.visible = false
		tutorial_4.visible = false

func set_current_selection(_current_selection) -> void:
	if _current_selection == 0:
		tutorial_1.visible = true
		tutorial_2.visible = false
		tutorial_3.visible = false
		tutorial_4.visible = false
	elif _current_selection == 1:
		tutorial_1.visible = false
		tutorial_2.visible = true
		tutorial_3.visible = false
		tutorial_4.visible = false
	elif _current_selection == 2:
		tutorial_1.visible = false
		tutorial_2.visible = false
		tutorial_3.visible = true
		tutorial_4.visible = false
	elif _current_selection == 3:
		tutorial_1.visible = false
		tutorial_2.visible = false
		tutorial_3.visible = false
		tutorial_4.visible = true


func _on_PrevButton_pressed():
	current_selection -= 1
	if current_selection < 0:
		current_selection = 0
	
	set_current_selection(current_selection)

func _on_NextButton_pressed():
	current_selection += 1
	if current_selection > 3:
		current_selection = 3
	
	set_current_selection(current_selection)
