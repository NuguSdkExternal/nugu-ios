Pod::Spec.new do |s|
  s.name = 'JadeMarbleExternal'
  s.version = '1.7.11-beta.8'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'End Point Detector for NUGU ASR'
  s.homepage = 'https://github.com/nugu-developers/nugu-ios'
  s.authors = { 'SK Telecom Co., Ltd.' => 'nugu_dev_sdk@sk.com' }
  s.source = { :git => 'https://github.com/NuguSdkExternal/nugu-ios.git', :tag => s.version }
  s.documentation_url = 'https://developers.nugu.co.kr'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5'

  s.source_files = 'JadeMarble/Sources/**/*.swift'
  s.vendored_frameworks = 'TycheCommon.xcframework', 'TycheEpd.xcframework', 'TycheSpeex.xcframework'
  s.resources = 'JadeMarble/Resources/*'
  s.libraries = 'c++'

  s.dependency 'NattyLog', '~> 1'
  s.dependency 'TycheSDK', '1.7.9'
  
  s.xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DDEPLOY_OTHER_PACKAGE_MANAGER'
  }
  
end
