# Builds the plugin and moves it to the appropriate plugins folder in the tester project.
./gradlew assembleDebug &&
	cp godotadmobandroidplugin/build/outputs/aar/godotadmobandroidplugin-release.aar ../tester/android/plugins/godot-admob-android-plugin.aar

