Pod::Spec.new do |s|
  s.name = 'NuguClientKitExternal'
  s.version = '1.7.12'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'Nugu Client Kit'
  s.description = <<-DESC
Default Instances for Nugu service
                       DESC

  s.homepage = 'https://github.com/NuguSdkExternal/nugu-ios'
  s.author = { 'SK Telecom Co., Ltd.' => 'nugu_dev_sdk@sk.com' }
  s.source = { :git => 'https://github.com/NuguSdkExternal/nugu-ios.git', :tag => s.version.to_s }
  s.documentation_url = 'https://developers.nugu.co.kr'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5'
  
  s.source_files = 'NuguClientKit/Sources/**/*', 'NuguClientKit/Sources-ObjC/*.{h,m}', 'NuguClientKit/NuguClientKit.h'
  s.public_header_files = 'NuguClientKit/Sources-ObjC/*.h', 'NuguClientKit/NuguClientKit.h'

  s.dependency 'NuguCoreExternal', '1.7.12'
  s.dependency 'NuguAgentsExternal', '1.7.12'
  s.dependency 'KeenSenseExternal', '1.7.12'
  s.dependency 'NuguLoginKit', '1.7.9'
  s.dependency 'NuguUIKitExternal', '1.7.12'
  s.dependency 'NuguUtils', '1.7.9'
  s.dependency 'NuguServiceKit', '1.7.9'

  s.dependency 'NattyLog', '~> 1'
  
  s.xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DDEPLOY_OTHER_PACKAGE_MANAGER'
  }
end
