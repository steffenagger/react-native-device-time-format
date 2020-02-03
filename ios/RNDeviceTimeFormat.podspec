
Pod::Spec.new do |s|
  s.name         = "RNDeviceTimeFormat"
  s.version      = "1.0.0"
  s.summary      = "RNDeviceTimeFormat"
  s.description  = <<-DESC
                  RNDeviceTimeFormat
                   DESC
  s.homepage     = "https://github.com/verticalstrategy/react-native-device-time-format"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNDeviceTimeFormat.git", :tag => "#{s.version}"}
  s.source_files  = "*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  