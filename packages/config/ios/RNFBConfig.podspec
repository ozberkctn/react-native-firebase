require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name                = "RNFBConfig"
  s.version             = package["version"]
  s.description         = package["description"]
  s.summary             = <<-DESC
                            A well tested feature rich Firebase implementation for React Native, supporting iOS & Android.
                          DESC
  s.homepage            = "http://invertase.io/oss/react-native-firebase"
  s.license             = package['license']
  s.authors             = "Invertase Limited"
  s.source              = { :git => "https://github.com/invertase/react-native-firebase.git", :tag => "v#{s.version}" }
  s.social_media_url    = 'http://twitter.com/invertaseio'
  s.platform            = :ios, "10.0"
  s.source_files        = 'RNFBConfig/**/*.{h,m}'
  s.dependency          'React'
  s.dependency          'Firebase/Core', '~> 5.15.0'
  s.dependency          'Firebase/RemoteConfig', '~> 5.15.0'
end