Pod::Spec.new do |s|

  s.name            = "BigIntSwift"
  s.version         = "1.0.0"
  s.summary         = "Implementation of Big Integer for Swift"
  s.description      = <<-DESC
Library to perform arithmetical operations on integer values of enormous size.
Pod provides basic arithmetical operation with Big Integer values like addition, multiplication and substraction.
                       DESC

  s.homepage        = "https://github.com/descorp/SwiftBigInteger"
  s.license         = { :type => "MIT", :file => "LICENSE" }
  s.author          = { "Vladimir Abramichev" => "vladimir.abramichev@mail.ru" }
  s.source          = { :git => "https://github.com/descorp/SwiftBigInteger.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'
  s.requires_arc    = true
  s.platform        = :ios, '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

  s.source_files    = "Source/**/*"
  s.preserve_paths  = "README*"
  # s.frameworks = 'UIKit', 'MapKit'

end
