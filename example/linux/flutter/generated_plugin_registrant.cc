//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <easy_dropdown/easy_dropdown_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) easy_dropdown_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "EasyDropdownPlugin");
  easy_dropdown_plugin_register_with_registrar(easy_dropdown_registrar);
}
