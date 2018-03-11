Pod::Spec.new do |s|
  s.name = 'SwiftExtensions'
  s.version = '0.1.0'
  s.license = 'MIT'
  s.summary = 'My Swift Extensions'
  s.homepage = 'https://github.com/hofzzy/SwiftExtensions'
  s.authors = { 'hofzzy' => 'hofzzy@gmail.com' }
  s.source = { :git => 'https://github.com/hofzzy/SwiftExtensions.git', :tag => s.version }

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Sources/*.swift'
end