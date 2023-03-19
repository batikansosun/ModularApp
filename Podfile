# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

workspace 'MainApp.xcworkspace'


def core_pods
  pod 'Swinject'
end

target 'MainApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  core_pods
  # Pods for MainApp

end

target 'BasketModule' do
  project 'BasketModule/BasketModule.xcodeproj'
  core_pods
  target 'BasketModuleTests' do
    inherit! :complete
  end
end

target 'LoginModule' do
  project 'LoginModule/LoginModule.xcodeproj'
  core_pods
  target 'LoginModuleTests' do
    inherit! :complete
  end
end

target 'PaymentModule' do
  project 'PaymentModule/PaymentModule.xcodeproj'
  core_pods
  target 'PaymentModuleTests' do
    inherit! :complete
  end
end

target 'CoreModule' do
  project 'CoreModule/CoreModule.xcodeproj'

  core_pods
  
  target 'CoreModuleTests' do
    inherit! :complete
  end
end

