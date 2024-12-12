# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'CarDrSDK' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CarDrSDK

  target 'CarDrSDKTests' do
    # Pods for testing
  end
  post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      end
    end
  end
end
