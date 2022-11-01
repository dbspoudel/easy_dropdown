import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'easy_dropdown_method_channel.dart';

abstract class EasyDropdownPlatform extends PlatformInterface {
  /// Constructs a EasyDropdownPlatform.
  EasyDropdownPlatform() : super(token: _token);

  static final Object _token = Object();

  static EasyDropdownPlatform _instance = MethodChannelEasyDropdown();

  /// The default instance of [EasyDropdownPlatform] to use.
  ///
  /// Defaults to [MethodChannelEasyDropdown].
  static EasyDropdownPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [EasyDropdownPlatform] when
  /// they register themselves.
  static set instance(EasyDropdownPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
