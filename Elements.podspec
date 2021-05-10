Pod::Spec.new do |spec|
  framework_filename = "Elements.xcframework"

  spec.name = "Elements"
  spec.version = "0.0.3"
  spec.summary = "Elements iOS SDK"
  spec.description = <<-DESC
    Elements official SDK
                   DESC
  spec.homepage = "https://elements.io"
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { "Marvin Zhan" => "marvin@elements.io" }
  spec.platform = :ios
  spec.ios.deployment_target = "11.0"
  spec.swift_version = '5.1'

  spec.source = { :git => "https://github.com/elementspay/ios-sdk-distribution.git", :tag => spec.version }

  spec.frameworks = 'Foundation'
  # spec.default_subspecs = 'Core', 'Components', 'Actions', 'Card', 'DropIn' 
  spec.default_subspecs = 'Core'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'SWIFT_SUPPRESS_WARNINGS' => 'YES' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # spec.subspec 'DropIn' do |plugin|
  #   plugin.source_files = 'ElementsDropIn/**/*.swift'
  #   plugin.dependency 'Elements/Core'
  #   plugin.dependency 'Elements/Actions'
  #   plugin.dependency 'Elements/Card'
  #   plugin.dependency 'Elements/Components'
  # end
  
  spec.subspec 'Core' do |plugin|
    plugin.vendored_frameworks = 'Elements.xcframework'
  end

  spec.subspec 'Card' do |plugin|
    plugin.dependency 'Elements/Core'
    plugin.vendored_frameworks = 'ElementsCard.xcframework'
  end

  # spec.subspec 'Components' do |plugin|
  #   plugin.dependency 'Elements/Core'
  #   plugin.source_files = 'ElementsComponents/**/*.swift'
  # end

  # spec.subspec 'Actions' do |plugin|
  #   plugin.dependency 'Elements/Core'
  #   plugin.source_files = 'ElementsActions/**/*.swift'
  #   plugin.resource_bundles = {
  #       'Elements' => [
  #           'ElementsActions/Assets/**/*.xcassets'
  #       ]
  #   }
  # end
end