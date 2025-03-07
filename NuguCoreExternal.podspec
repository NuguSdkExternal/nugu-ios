Pod::Spec.new do |s|
  s.name = 'NuguCoreExternal'
  s.version = '1.7.11-beta.8'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'Nugu'
  s.description = <<-DESC
Nugu framework for AI Service
                       DESC

  s.homepage = 'https://github.com/NuguSdkExternal/nugu-ios'
  s.author = { 'SK Telecom Co., Ltd.' => 'nugu_dev_sdk@sk.com' }
  s.source = { :git => 'https://github.com/NuguSdkExternal/nugu-ios.git', :tag => s.version.to_s }
  s.documentation_url = 'https://developers.nugu.co.kr'

  s.ios.deployment_target = '12.0'
  # s.tvos.deployment_target = '13.0'
  # s.watchos.deployment_target = '6.0'
  # s.macos.deployment_target = '10.15.0'

  s.swift_version = '5'

  s.source_files = 'NuguCore/Sources/**/*'

  s.dependency 'NuguUtils', '1.7.9'
  s.dependency 'NattyLog', '~> 1.0'
  s.dependency 'RxSwift', '~> 6'
  
  s.xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DDEPLOY_OTHER_PACKAGE_MANAGER'
  }
end
