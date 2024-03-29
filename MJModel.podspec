#
# Be sure to run `pod lib lint MJModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MJModel'
  s.version          = '0.1.1'
  s.summary          = 'MJModel is a framework in swift which allows you to easily convert model to json string or json string to model.'

  s.homepage         = 'https://github.com/Musjoy/Swift-MJModel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'raymond-hl' => 'Raymond.huang@musjoy.com' }
  s.source           = { :git => 'https://github.com/Musjoy/Swift-MJModel.git', :tag => s.version, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '4.0'
  s.tvos.deployment_target = '11.0'

  s.default_subspec = 'Core'
  
  s.swift_versions = '5.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Source/Core/*.swift'
    ss.dependency 'MJModel/JsonSerializer'
    ss.user_target_xcconfig = {
      'OTHER_SWIFT_FLAGS' => '-DMODULE_MODEL'
    }
  end
  
  s.subspec 'JsonSerializer' do |ss|
    ss.source_files = 'Source/Json/*.swift'
    ss.user_target_xcconfig = {
      'OTHER_SWIFT_FLAGS' => '-DMODULE_JSON_SERIALIZER'
    }
  end

end
