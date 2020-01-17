
Pod::Spec.new do |spec|

  spec.name         = "BullseyeFramework"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of BullseyeFramework."
  spec.description  = "This is description"
  spec.homepage     = "https://vbi.vietinbank.vn"
  spec.license      = "MIT"
  spec.author             = { "giapnh.vbi" => "giapnh.vbi@vietinbank.vn" }
  spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

end
