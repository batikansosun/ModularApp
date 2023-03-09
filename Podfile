# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

workspace 'MainApp.xcworkspace'

target 'MainApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MainApp

end

target 'BasketModule' do
  project 'BasketModule/BasketModule.xcodeproj'

  target 'BasketModuleTests' do
    inherit! :complete
  end
end

target 'LoginModule' do
  project 'LoginModule/LoginModule.xcodeproj'

  target 'LoginModuleTests' do
    inherit! :complete
  end
end

target 'PaymentModule' do
  project 'PaymentModule/PaymentModule.xcodeproj'

  target 'PaymentModuleTests' do
    inherit! :complete
  end
end

target 'CoreModule' do
  project 'CoreModule/CoreModule.xcodeproj'

  target 'CoreModuleTests' do
    inherit! :complete
  end
end

