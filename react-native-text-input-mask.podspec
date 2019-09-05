require 'json'

# package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = "react-native-geolocation"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/team55/react-native-text-input-mask.git", :tag => "#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end