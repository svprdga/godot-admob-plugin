
#import <Foundation/Foundation.h>
#import "godot_plugin.h"
#import "godot_plugin_class.h"
#import "core/engine.h"

PluginClass *plugin;

void test_plugin_init() {
    plugin = memnew(PluginClass);
    Engine::get_singleton()->add_singleton(Engine::Singleton("TestPlugin", plugin));
}

void test_plugin_deinit() {
   if (plugin) {
       memdelete(plugin);
   }
}
