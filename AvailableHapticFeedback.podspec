
Pod::Spec.new do |s|

  s.name         = "AvailableHapticFeedback"
  s.version      = "1.0.0"
  s.summary      = "Wrapper for UIFeedbackGenerator that compiles on iOS 9."

  s.homepage     = "https://github.com/yonat/AvailableHapticFeedback"

  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author             = { "Yonat Sharon" => "yonat@ootips.org" }
  s.social_media_url   = "http://twitter.com/yonatsharon"

  s.swift_version = '4.2'
  s.platform     = :ios, "9.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/yonat/AvailableHapticFeedback.git", :tag => s.version }
  s.source_files  = "Sources/*.swift"

end
