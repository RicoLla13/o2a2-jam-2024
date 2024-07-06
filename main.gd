extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.start("first")


func _on_timeline_ended():
	Dialogic.timeline_ended.disconnect(_on_timeline_ended)
	print("hehehaw")
	get_tree().quit()
