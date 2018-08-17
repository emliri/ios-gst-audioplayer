Pod::Spec.new do |s|
s.name             = 'GstAudioPlayer'
s.version          = '1.0.0'
s.summary          = 'Gst audio player'
s.description      = <<-DESC
Audio player for iOS using GStreamer library
DESC
s.homepage         = 'https://github.com/blinkist/ios-gst-audioplayer'
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = { 'Blinkist' => 'info@blinkist.com' }
s.platform         = :ios, '9.0'
s.source           = { :git => 'https://github.com/blinkist/ios-gst-audioplayer.git', :tag => "v#{s.version}" }
s.source_files     = 'AudioPlayer/Source/**/*.swift'
s.swift_version    = '4.1'
s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
s.prefix_header_file = false
s.static_framework = true
s.ios.vendored_frameworks = 'Frameworks/GStreamer.framework'
end
