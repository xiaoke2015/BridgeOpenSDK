#
#  Be sure to run `pod spec lint Chat_Const.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "BridgeOpenSDK_Light"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of BridgeOpenSDK_Light."

  spec.description  = <<-DESC
                  BridgeOpenSDK_Light
                    DESC

  spec.homepage = "https://github.com/xiaoke2015/BridgeOpenSDK_Light.git"

  spec.license = "MIT"

  spec.author = { "xiaoke2015" => "779454060@qq.com" }

  spec.platform = :ios, "11.0"

  spec.ios.deployment_target = "11.0"

  spec.static_framework = true

  spec.source = { :git => "#{spec.homepage}", :tag => "#{spec.version}" }

  spec.source_files = "Sources/*{Bugly,UMeng}.{m,h}"
  
  spec.dependency "UMCommon"
  spec.dependency "Bugly"


end
