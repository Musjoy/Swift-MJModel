#
# Be sure to run `pod lib lint MJModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MJModel'
  s.version          = '0.1.0'
  s.summary          = 'A model include json parse.'

  s.homepage         = 'https://github.com/Musjoy/MJModel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'raymond-hl' => 'Raymond.huang@musjoy.com' }
  s.source           = { :git => 'https://github.com/raymond-hl/MJModel.git', :tag => "v-#{s.version}", :submodules => true }

  s.ios.deployment_target = '8.0'

  s.default_subspec = 'Core'

  s.user_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DMODULE_MODEL'
  }

  s.subspec 'Core' do |ss|
    ss.source_files = 'MJModel/Classes/Core/*.swift', 'MJModel/Classes/Json/*.swift'
  end

end
