#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint easy_dropdown.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'easy_dropdown'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin for easy use of dropdown menu and button.'
  s.description      = <<-DESC
Flutter plugin for easy use of dropdown menu and button.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
