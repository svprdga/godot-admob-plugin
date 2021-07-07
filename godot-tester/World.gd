extends Node2D

onready var status_label = $StatusLabel

func _ready():
	var singleton = null
	if OS.get_name() == "Android" and Engine.has_singleton("GodotAdmobAndroidPlugin"):
			singleton = Engine.get_singleton("GodotAdmobAndroidPlugin")
	elif OS.get_name() =="iOS" and Engine.has_singleton("GodotAdmobIosPlugin"):
			singleton = Engine.get_singleton("GodotAdmobIosPlugin")	
	
	if singleton != null:
		status_label.text = "Plugin successfully loaded: %s" % singleton.say_hello()
	else:
		status_label.text = "*** Plugin could not be loaded. ***"