Pod::Spec.new do |s|
  s.name             = 'flutter_braintree'
  s.version          = '1.0.1' # Increment version to reflect changes
  s.summary          = 'A Flutter plugin for Braintree'
  s.description      = <<-DESC
  A Flutter plugin that wraps the native Braintree Drop-In UI SDKs.
                       DESC
  s.homepage         = 'https://github.com/samcheneytlc/flutter-braintree'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Sam Cheney' => 'your_email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  # Correctly point to your fork of braintree-ios-drop-in with the appropriate tag
  s.dependency 'BraintreeDropIn', :git => 'https://github.com/samcheneytlc/braintree-ios-drop-in.git', :tag => '9.4.1'

  s.dependency 'Braintree/PayPal', '~> 5.6.3'
  s.dependency 'Braintree/ApplePay', '~> 5.6.3'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
end
