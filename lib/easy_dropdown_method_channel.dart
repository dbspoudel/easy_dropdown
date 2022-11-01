import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'easy_dropdown_platform_interface.dart';

/// An implementation of [EasyDropdownPlatform] that uses method channels.
class MethodChannelEasyDropdown extends EasyDropdownPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('easy_dropdown');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
