Pod::Spec.new do |s|

  s.name            = "BigIntSwift"
  s.version         = "0.0.1"
  s.summary         = "Library to perform arithmetical operations on integer values of enormous size"
  s.description     = "Implementation of Big Integer for Swift"

  s.homepage        = "https://github.com/descorp/SwiftBigInteger"
  s.license         = { :type => "MIT", :file => "LICENSE" }
  s.author          = { "Vladimir Abramichev" => "vladimir.abramichev@mail.ru" }
  s.source          = { :git => "https://github.com/descorp/SwiftBigInteger.git", :tag => "#{s.version}" }

  s.requires_arc    = true
  s.platform        = :ios, "9.0"

  s.source_files    = "Sources/*.{swift}"
  s.preserve_paths  = "README*"

end
