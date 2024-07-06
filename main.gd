extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.timeline_ended.connect(_on_timeline_end)
	Dialogic.start("game_timeline")

func _on_timeline_end():
	Dialogic.timeline_ended.disconnect(_on_timeline_end)
	get_tree().quit()
