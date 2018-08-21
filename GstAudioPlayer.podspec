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
s.source_files     = 'AudioPlayer/Source/**/*.*'
s.swift_version    = '4.1'
s.ios.vendored_frameworks = 'AudioPlayer/Frameworks/GStreamer.framework'
end
