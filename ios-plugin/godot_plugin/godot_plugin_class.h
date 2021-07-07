#pragma once

#include "core/object.h"

class PluginClass : public Object {
    GDCLASS(TestPlugin, Object);
    
    static void _bind_methods();
    
public:
    String say_hello ();
    
    PluginClass();
    ~PluginClass();
};



