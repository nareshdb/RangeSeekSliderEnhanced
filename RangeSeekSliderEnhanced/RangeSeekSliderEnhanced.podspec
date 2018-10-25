#
# Be sure to run `pod lib lint RangeSeekSliderEnhanced.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RangeSeekSliderEnhanced'
  s.version          = '1.0.2'
  s.summary          = 'RangeSeekSliderEnhanced can be used in replacement of UISlider.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  RangeSeekSliderEnhanced is forked with ♥️ from https://github.com/WorldDownTown/RangeSeekSlider and has some extra features.
                       DESC
  s.swift_version = '4.2'
  s.homepage         = 'https://github.com/nareshdb/RangeSeekSliderEnhanced'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nareshdb' => 'nareshjangid84@gmail.com' }
  s.source           = { :git => 'https://github.com/nareshdb/RangeSeekSliderEnhanced.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RangeSeekSliderEnhanced/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RangeSeekSliderEnhanced' => ['RangeSeekSliderEnhanced/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
