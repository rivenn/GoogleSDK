Pod::Spec.new do |s|
  s.name         = 'GoogleSDK'
  s.version      = '1.0.0'
  s.summary      = 'Google iOS SDKs.'
  s.description  = 'Google iOS SDKs description.'
  s.homepage     = 'https://devsite.googleplex.com/ios/sdks/'
  s.license      =  { :type => 'Copyright', :text => 'Copyright 2014 Google Inc.' }
  s.source       =  { :http => 'https://dl.dropboxusercontent.com/u/43497092/Google.zip' }
  s.authors      = [ 'Google Inc.' ]
  s.requires_arc = false
  s.prepare_command = <<-CMD
    echo "HELLO GOOGLE SDK"
    # a bash script that will be executed after the source is downloaded
                      CMD

  s.subspec 'GoogleOpenSource' do |gos|
    gos.version = '1.0.0'
    gos.frameworks = [ 'GoogleOpenSource' ]
    gos.vendored_frameworks = [ 'GoogleOpenSource/GoogleOpenSource.framework' ]

  s.subspec 'GooglePlus' do |gpp|
    gpp.dependency 'GoogleOpenSource', '~> 1.0.0'
    gpp.frameworks = ['AddressBook', 'AssetsLibrary', 'Foundation', 'CoreLocation', 'CoreMotion', 'CoreGraphics', 'CoreText', 'MediaPlayer', 'Security', 'SystemConfiguration', 'UIKit' ]
    gpp.public_header_files = [ 'GooglePlus/GooglePlus.framework/Headers' ]
    gpp.resource = 'GooglePlus/GooglePlus.bundle'
    gpp.vendored_frameworks = [ 'GooglePlus/GooglePlus.framework' ]
  end

  s.subspec 'GooglePlayGames' do |gpg|
    gpg.dependency 'GoogleOpenSource', '~> 1.0.0'
    gpg.frameworks = ['AddressBook', 'AssetsLibrary', 'Foundation', 'CoreLocation', 'CoreMotion', 'CoreGraphics', 'CoreText', 'MediaPlayer', 'Security', 'SystemConfiguration', 'UIKit' ]
    gpg.public_header_files = [ 'GooglePlayGames/GooglePlayGames.framework/Headers' ]
    gpg.resource = 'GooglePlayGames/GooglePlayGames.bundle'
    gpg.vendored_frameworks = [ 'GooglePlayGames/GooglePlayGames.framework' ]
  end


end




