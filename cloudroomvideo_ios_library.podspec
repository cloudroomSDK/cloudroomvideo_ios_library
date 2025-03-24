Pod::Spec.new do |spec|
  spec.name         = "cloudroomvideo_ios_library"
  spec.version      = "0.0.7"
  spec.summary      = "Native SDK for flutter iOS."
  spec.description  = <<-DESC
    Native SDK for flutter iOS. Since V4.5.4.
                   DESC
  spec.homepage     = "https://sdk.cloudroom.com"
  spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Cloudroom" => "tom@cloudroom.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/cloudroomSDK/cloudroomvideo_ios_library.git", :tag => "#{spec.version}" }
  #spec.source_files  = "CloudroomVideoSDK_IOS/CloudroomVideoSDK_IOS.framework/Headers/*.{h,m}"
  spec.frameworks = "CoreServices", "Security", "AudioToolbox", "AVFoundation", "CoreMedia", "ExternalAccessory", "SystemConfiguration", "UIKit", "MobileCoreServices"
  spec.vendored_frameworks  = "CloudroomVideoSDK_IOS/CloudroomVideoSDK_IOS.xcframework"
  spec.libraries = "c++", "iconv", "bz2", "z"
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64', 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

  spec.requires_arc = true
end
