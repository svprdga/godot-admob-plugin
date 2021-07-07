extends Node2D

onready var status_label = $StatusLabel

func _ready():
	if OS.get_name() == "Android":
		if Engine.has_singleton("GodotAdmobAndroidPlugin"):
			# var singleton = Engine.get_singleton("GodotAdmobAndroidPlugin")
			status_label.text = "Plugin successfully loaded."
		else:
			status_label.text = "*** Plugin not available. ***"
	elif OS.get_name() == "iOS":
		if Engine.has_singleton("TestPlugin"):
			# var singleton = Engine.get_singleton("GodotAdmobAndroidPlugin")
			status_label.text = "Plugin successfully loaded."
		else:
			status_label.text = "*** Plugin not available. ***"
	else:
		status_label.text = "Cannot load AdMob plugin in a non-mobile platform."
