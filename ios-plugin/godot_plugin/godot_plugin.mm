
#import <Foundation/Foundation.h>
#import "godot_plugin.h"
#import "godot_plugin_class.h"
#import "core/engine.h"

PluginClass *plugin;

void godot_admob_ios_plugin_init() {
    plugin = memnew(PluginClass);
    Engine::get_singleton()->add_singleton(Engine::Singleton("GodotAdmobIosPlugin", plugin));
}

void godot_admob_ios_plugin_deinit() {
   if (plugin) {
       memdelete(plugin);
   }
}
