import 'package:flutter_test/flutter_test.dart';
import 'package:easy_dropdown/easy_dropdown.dart';
import 'package:easy_dropdown/easy_dropdown_platform_interface.dart';
import 'package:easy_dropdown/easy_dropdown_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEasyDropdownPlatform
    with MockPlatformInterfaceMixin
    implements EasyDropdownPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final EasyDropdownPlatform initialPlatform = EasyDropdownPlatform.instance;

  test('$MethodChannelEasyDropdown is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelEasyDropdown>());
  });

  test('getPlatformVersion', () async {
    EasyDropdown easyDropdownPlugin = EasyDropdown();
    MockEasyDropdownPlatform fakePlatform = MockEasyDropdownPlatform();
    EasyDropdownPlatform.instance = fakePlatform;

    expect(await easyDropdownPlugin.getPlatformVersion(), '42');
  });
}
