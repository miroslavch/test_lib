#
# Be sure to run `pod lib lint test_lib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'test_lib_asd'
  s.version          = '0.2.0'
  s.summary          = 'test pod.'
  s.description      = 'long description'

  s.homepage         = 'https://github.com/miroslavch/test_lib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'miroslavch' => 'miroslavch@safecharge.com' }
  s.source           = { :git => 'https://github.com/miroslavch/test_lib.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'test_lib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'test_lib' => ['test_lib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.requires_arc = true
  s.dependency 'Alamofire' , '~> 4.5.0'
  
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.requires_arc     = true
  s.source_files     = 'CardIO/*.h'
  s.frameworks       = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
  s.libraries        = 'c++'
  s.vendored_libraries = 'CardIO/libCardIO.a', 'CardIO/libopencv_core.a', 'CardIO/libopencv_imgproc.a'
end
