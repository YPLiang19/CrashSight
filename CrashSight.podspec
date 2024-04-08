Pod::Spec.new do |s|
s.name         = "CrashSight"
s.version      = "4.2.14"
s.summary      = "CrashSight"
s.description  = <<-DESC
  CrashSight is a Crash catch SDK
DESC
s.homepage     = "https://crashsight.qq.com"
s.license      = "MIT"
s.author             = { "Yong PengLiang" => "yong_pliang@163.com" }
s.ios.deployment_target = "9.0"
s.source       = { :git => "https://github.com/YPLiang19/CrashSight.git", :tag => "#{s.version}" }
s.vendored_frameworks  = 'CrashSight.framework'
s.frameworks = 'SystemConfiguration', 'Security', 'UIKit'
s.weak_framework = 'MetricKit'
s.libraries = 'z', 'c++'
end

