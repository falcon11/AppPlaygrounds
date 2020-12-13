Pod::Spec.new do |s|
  s.name             = "{{Project}}Pod"
  s.version          = "0.0.1"
  s.summary          = "{{Project}} playground"
  s.homepage         = "https://github.com/falcon11/AppPlaygrounds"
  s.license          = 'MIT'
  s.author           = { "ashoka" => "savebtc11@gmail.com" }
  s.source           = { :git => "https://github.com/falcon11/AppPlaygrounds.git", :tag => s.version }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = '{{Project}}/Source/**/*.{h,m}'
  
  s.resource_bundles = {
    '{{Project}}' => ['{{Project}}/Assets/**/*', '{{Project}}/Source/**/*.{storyboard,xib}']
  }

  s.frameworks = 'UIKit' 
  s.dependency 'CTMediator'
end
