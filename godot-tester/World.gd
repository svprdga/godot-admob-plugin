extends Node2D

onready var status_label = $StatusLabel

func _ready():
	if Engine.has_singleton("GodotAdmobIosPlugin"):
		status_label.text = "Plugin successfully loaded."
	else:
		status_label.text = "*** Plugin could not be loaded. ***"
