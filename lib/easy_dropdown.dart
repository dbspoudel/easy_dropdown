import 'easy_dropdown_platform_interface.dart';

class EasyDropdownItem<T> {
  final String label;
  final T value;
  EasyDropdownItem(this.label, this.value);
}

class EasyDropdown {
  Future<String?> getPlatformVersion() async {
    return EasyDropdownPlatform.instance.getPlatformVersion();
  }
}
