#
#  Be sure to run `pod spec lint cloudroomvideo_ios_library.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "cloudroomvideo_ios_library"
  spec.version      = "0.0.4"
  spec.summary      = "Native SDK for flutter iOS."
  spec.description  = <<-DESC
    Native SDK for flutter iOS. Since V4.3.28.
                   DESC
  spec.homepage     = "https://sdk.cloudroom.com"
  spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Cloudroom" => "tom@cloudroom.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/cloudroomSDK/cloudroomvideo_ios_library.git", :tag => "#{spec.version}" }
  spec.source_files  = "CloudroomVideoSDK_IOS/CloudroomVideoSDK_IOS.framework/Headers/*.{h,m}"
  spec.frameworks = "CoreServices", "Security", "AudioToolbox", "AVFoundation", "CoreMedia", "ExternalAccessory", "SystemConfiguration", "UIKit", "MobileCoreServices"
  spec.vendored_frameworks  = "CloudroomVideoSDK_IOS/CloudroomVideoSDK_IOS.framework"
  spec.libraries = "c++", "iconv", "bz2", "z"
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64', 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

  spec.requires_arc = true
end
