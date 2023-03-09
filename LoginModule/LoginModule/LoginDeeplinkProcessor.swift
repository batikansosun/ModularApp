//
//  LoginDeeplinkProcessor.swift
//  LoginModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import Foundation
import CoreModule
import UIKit

public class LoginDeeplinkProcessor: DeeplinkProcessorProtocol {
    
    private let sourceViewController: UIViewController?
    
    public init(sourceViewController: UIViewController?) {
        self.sourceViewController = sourceViewController
    }
    
    public func matches(deeplink: String) -> Bool {
        deeplink.contains(LoginModuleNavigation.home.rawValue)
    }
    
    public func execute(deeplink: String) {
        let controller = LoginViewController(nibName: "LoginViewController", bundle: Bundle(for: Self.self))
        sourceViewController?.show(controller, sender: nil)
    }
    
    
}
