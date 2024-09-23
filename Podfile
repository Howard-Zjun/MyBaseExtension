source 'https://github.com/CocoaPods/Specs.git'

platform:ios,'13.0'

workspace 'MyBaseExtension.xcworksapce'

#公用pods

def commonPods

  use_frameworks!

end

target 'MyBaseExtension' do
  
    project 'MyBaseExtension.xcodeproj'
    
    commonPods
end

target 'ModuleDebug' do
  
  project 'ModuleDebug/ModuleDebug.xcodeproj'
  
  commonPods
end
