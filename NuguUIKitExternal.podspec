Pod::Spec.new do |s|
  s.name = 'NuguUIKitExternal'
  s.version = '1.7.11-beta.8'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'UI Set of Nugu Service'
  s.description = <<-DESC
  Provides set of UI components such as NuguButton, NuguVoiceChrome for using Nugu Service
                       DESC

  s.homepage = 'https://github.com/NuguSdkExternal/nugu-ios'
  s.author = { 'SK Telecom Co., Ltd.' => 'nugu_dev_sdk@sk.com' }
  s.source = { :git => 'https://github.com/NuguSdkExternal/nugu-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5'

  s.resources = 'NuguUIKit/Resources/**/*.{json}', 'NuguUIKit/Sources/**/*.{xib}'
  s.resource_bundles = { 'NuguUIKit-Images' => ['NuguUIKit/Resources/*.xcassets'] }

  s.source_files = 'NuguUIKit/Sources/**/*.{swift}'

  s.dependency 'NuguAgentsExternal', '1.7.11-beta.8'
  s.dependency 'NuguUtils', '1.7.9'
  
  s.dependency 'NattyLog', '~> 1'
  s.dependency 'lottie-ios', '~> 4'
  
  s.xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DDEPLOY_OTHER_PACKAGE_MANAGER'
  }
end
