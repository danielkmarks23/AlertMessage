#
# Be sure to run `pod lib lint AlertMessage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlertMessage'
  s.version          = '1.0.0'
  s.summary          = 'Banner, Snackbar & Centered Alert libary written with SwiftUI'

  s.description      = <<-DESC
Banner, Snackbar & Centered Alert libary written with SwiftUI
                       DESC

  s.homepage         = 'https://github.com/danielkmarks23/AlertMessage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'danielkmarks23' => 'danielkmarks@gmail.com' }
  s.source           = { :git => 'https://github.com/danielkmarks23/AlertMessage.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.0'
  s.swift_version = "5.5"

  s.source_files = 'AlertMessage/Classes/**/*'

end
