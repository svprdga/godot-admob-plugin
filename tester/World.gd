extends Node2D

onready var status_label = $StatusLabel

func _ready():
	if Engine.has_singleton("GodotAdmobAndroidPlugin"):
		# var singleton = Engine.get_singleton("GodotAdmobAndroidPlugin")
		status_label.text = "Plugin successfully loaded."
	else:
		status_label.text = "*** Plugin not available. ***"
