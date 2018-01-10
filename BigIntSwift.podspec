Pod::Spec.new do |s|

  s.name            = "BigIntSwift"
  s.version         = "1.0.1"
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
  s.osx.deployment_target = "10.9"
  s.requires_arc    = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

  s.source_files    = "Source/**/*"

end
