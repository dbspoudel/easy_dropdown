#include "include/easy_dropdown/easy_dropdown_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "easy_dropdown_plugin.h"

void EasyDropdownPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  easy_dropdown::EasyDropdownPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
