Pod::Spec.new do |spec|
  # ――― Spec Metadata ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
  spec.name         = "CarDrSDK"
  spec.version      = "0.0.1"
  spec.summary      = "A powerful SDK for car diagnostics and appraisals."

  # Description for documentation and search purposes
  spec.description  = <<-DESC
    CarDr.com is an automotive technology company providing industry-leading 
    software services, hardware, and solutions for vehicle diagnostics, appraisals, 
    and inspections. This SDK includes support for OEM-level Bluetooth OBD detection 
    and vehicle diagnostics.
  DESC

  spec.homepage     = "https://cardr.com/CarDrSDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Arvind_Cardr" => "arvind@cardr.com" }
  spec.social_media_url = "https://twitter.com/Arvind_Cardr"

  # ――― Platform Specifics ―――――――――――――――――――――――――――――――――――――――――――――――――――――
  spec.platform     = :ios, "10.0"
  spec.requires_arc = true

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――
  spec.source       = { :git => "https://github.com/Arvind6446/CarDr_IOS_Pod.git", :tag => spec.version }

  # ――― Source Code ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
  spec.source_files  = "CarDrSDK/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.public_header_files = "CarDrSDK/**/*.h"

  # ――― Vendor Frameworks ――――――――――――――――――――――――――――――――――――――――――――――――――――――
 spec.vendored_frameworks = 'CarDrSDK/RepairClubSDK.framework'

  # ――― Dependencies ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
  spec.dependency "Alamofire", "~> 5.6.4"
  spec.dependency "SwiftyJSON", "~> 5.0.1"

  # ――― Build Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
  spec.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64",
    "HEADER_SEARCH_PATHS" => "$(inherited) $(SRCROOT)/CarDrSDK/RepairClubSDK"
  }

  spec.user_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }
end
