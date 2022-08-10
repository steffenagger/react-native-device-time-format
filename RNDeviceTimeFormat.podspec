
Pod::Spec.new do |s|
  s.name         = "RNDeviceTimeFormat"
  s.version      = "2.0.0"
  s.summary      = "Exposes the device setting for 12/24 hour format to React Native"
  s.description  = <<-DESC
                  RNDeviceTimeFormat
                   DESC
  s.homepage     = "https://github.com/steffenagger/react-native-device-time-format"
  s.license      = "MIT"
  s.author       = { "Steffen Agger" => "steffen.agger@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNDeviceTimeFormat.git", :tag => "#{s.version}"}
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true


  s.dependency "React-Core"

end

  