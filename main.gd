extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.timeline_ended.connect(_on_timeline_end)
	Dialogic.start("gametest_timeline")

func _on_timeline_end():
	Dialogic.timeline_ended.disconnect(_on_timeline_end)
	get_tree().change_scene_to_file("res://welcome_menu.tscn")
