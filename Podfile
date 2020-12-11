# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

workspace 'AppPlaygrounds.xcworkspace'

abstract_target 'Playground' do
#  use_modular_headers!
  
  pod 'CTMediator'
  pod 'WCCommon', :path => 'WCCommon'
  
  target 'AppPlaygrounds' do
    # Comment the next line if you don't want to use dynamic frameworks
#    use_frameworks!
    
    pod 'Runtime', :path => 'Runtime'
    pod 'Runtime_Category', :path => 'Runtime'
    pod 'WCDBModule', :path => 'WCDBPlayground'
    pod 'WCDBModule_Category', :path => 'WCDBPlayground'
    pod 'ThemeModule', :path => 'ThemePlayground'
    pod 'ThemeModule_Category', :path => 'ThemePlayground'
    pod 'QMUIKit'

    # Pods for AppPlaygrounds

    target 'AppPlaygroundsTests' do
      inherit! :search_paths
      # Pods for testing
    end

    target 'AppPlaygroundsUITests' do
      # Pods for testing
    end

  end
  
  target 'RuntimePlayground' do
    project 'Runtime/RuntimePlayground.xcodeproj'
    
  end
  target 'WCDBPlayground' do
    project 'WCDBPlayground/WCDBPlayground.xcodeproj'
    pod 'WCDB'
  end
  target 'ThemePlayground' do
    project 'ThemePlayground/ThemePlayground.xcodeproj'
  end
  
end

target 'WCCommon' do
  project 'WCCommon/WCCommon.xcodeproj'
  pod 'QMUIKit'
end
