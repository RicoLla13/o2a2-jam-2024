extends Node2D

var state = "quit"

# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.timeline_ended.connect(_on_timeline_end)
	Dialogic.start("welcome")
	
func _on_dialogic_signal(argument:String):
	if argument == "goto_main":
		state = "play"
	elif argument == "goto_quit":
		state = "quit"

func _on_timeline_end():
	Dialogic.timeline_ended.disconnect(_on_timeline_end)
	if state == "play":
		get_tree().change_scene_to_file("res://main.tscn")
	elif state == "quit":
		get_tree().quit()
