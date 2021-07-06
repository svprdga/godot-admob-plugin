package com.svprdga.godotadmobandroidplugin

import org.godotengine.godot.Godot
import org.godotengine.godot.plugin.GodotPlugin

class GodotAdmobAndroidPlugin(godot: Godot) : GodotPlugin(godot) {

    override fun getPluginName(): String {
        return "GodotAdmobAndroidPlugin"
    }

    override fun getPluginMethods(): List<String> {
        return listOf("say_hello", "say_name")
    }

    fun say_hello(): String {
        return "Hello from the plugin!"
    }

    fun say_name(name: String): String {
        return "Hello $name"
    }
}