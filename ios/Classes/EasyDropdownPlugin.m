#import "EasyDropdownPlugin.h"
#if __has_include(<easy_dropdown/easy_dropdown-Swift.h>)
#import <easy_dropdown/easy_dropdown-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "easy_dropdown-Swift.h"
#endif

@implementation EasyDropdownPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEasyDropdownPlugin registerWithRegistrar:registrar];
}
@end
