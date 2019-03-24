#
# Be sure to run `pod lib lint MGVideoPlayerKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MGVideoPlayerKit'
  s.version          = '0.1.0'
  s.summary          = 'When you sit down to work, external critics aren’t'
  s.description      = 'When you sit down to work, external critics aren’t the enemy. It’s you who you must to fight against to do great fucking work. You must overcome yourself. Saul Bass on failure: Failure is built into creativity… the creative act involves this element of ‘newness’ and ‘experimentalism,’ then one must expect and accept the fucking possibility of failure.'
  s.homepage         = 'https://bitbucket.org/haraldbregu/mgvideoplayerkit/src'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Harald Bregu' => 'harald.bregu@gmail.com' }
  s.source           = {
      :git => 'https://haraldbregu@bitbucket.org/haraldbregu/mgvideoplayerkit.git', :tag => s.version.to_s
  }
  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'
  s.source_files = 'MGVideoPlayerKit/Classes/**/*'
  s.resource_bundles = {
      'MGVideoPlayerKit' => ['MGVideoPlayerKit/Assets/*.{png,storyboard}']
  }
  s.dependency 'Cosmos', '~> 18.0'
end
