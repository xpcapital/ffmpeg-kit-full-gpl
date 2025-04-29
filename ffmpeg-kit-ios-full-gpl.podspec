Pod::Spec.new do |s|
    s.name             = 'ffmpeg-kit-ios-full-gpl'
    s.version          = '6.0'   # Must match what ffmpeg-kit-react-native expects.
    s.summary          = 'Custom full-gpl FFmpegKit iOS frameworks from NooruddinLakhani.'
    s.homepage         = 'https://github.com/NooruddinLakhani/ffmpeg-kit-ios-full-gpl'
    s.license          = { :type => 'LGPL' }
    s.author           = { 'NooruddinLakhani' => 'https://github.com/NooruddinLakhani' }
    s.platform         = :ios, '12.1'
    s.static_framework = true
  
    # Use the HTTP source to fetch the zipped package directly.
    s.source           = { :http => 'https://github.com/xpcapital/ffmpeg-kit-full-gpl/releases/download/6.0/Frameworks.zip' }
  
    s.vendored_frameworks = 'Frameworks/*.xcframework'
  end
