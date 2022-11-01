#ifndef FLUTTER_PLUGIN_EASY_DROPDOWN_PLUGIN_H_
#define FLUTTER_PLUGIN_EASY_DROPDOWN_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace easy_dropdown {

class EasyDropdownPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  EasyDropdownPlugin();

  virtual ~EasyDropdownPlugin();

  // Disallow copy and assign.
  EasyDropdownPlugin(const EasyDropdownPlugin&) = delete;
  EasyDropdownPlugin& operator=(const EasyDropdownPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace easy_dropdown

#endif  // FLUTTER_PLUGIN_EASY_DROPDOWN_PLUGIN_H_
