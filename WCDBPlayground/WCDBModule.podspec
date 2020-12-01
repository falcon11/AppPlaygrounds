Pod::Spec.new do |s|
  s.name             = "WCDBModule"
  s.version          = "0.0.1"
  s.summary          = "wcdb playground"
  s.homepage         = "https://github.com/falcon11/AppPlaygrounds"
  s.license          = 'MIT'
  s.author           = { "ashoka" => "savebtc11@gmail.com" }
  s.source           = { :git => "https://github.com/falcon11/AppPlaygrounds.git", :tag => s.version }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'WCDBPlayground/Source/**/*.{h,m,mm}'

  s.frameworks = 'UIKit' 
  s.dependency 'CTMediator'
  s.dependency 'WCDB'
end
