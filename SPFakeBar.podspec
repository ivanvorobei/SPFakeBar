Pod::Spec.new do |s|

  s.name          = "SPFakeBar"
  s.version       = "1.0.8"
  s.summary       = "Fake navigation bar with full customize"
  s.homepage      = "https://github.com/IvanVorobei/SPFakeBar"
  s.source        = { :git => "https://github.com/IvanVorobei/SPFakeBar.git", :tag => s.version }
  s.license       = { :type => "MIT", :file => "LICENSE" }
  
  s.author        = { "Ivan Vorobei" => "hello@ivanvorobei.by" }
  
  s.platform      = :ios
  s.ios.framework = 'UIKit'
  s.swift_version = ['4.2', '5.0']
  s.ios.deployment_target = "10.0"

  s.source_files  = "Source/SPFakeBar/**/*.swift"
  
end


