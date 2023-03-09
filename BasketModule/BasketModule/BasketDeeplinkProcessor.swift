//
//  BasketDeeplinkProcessor.swift
//  BasketModule
//
//  Created by Batikan Sosun on 7.03.2023.
//

import Foundation
import CoreModule
import UIKit

public class BasketDeeplinkProcessor: DeeplinkProcessorProtocol {
    
    private let sourceViewController: UIViewController?
    
    public init(sourceViewController: UIViewController?) {
        self.sourceViewController = sourceViewController
    }
    
    public func matches(deeplink: String) -> Bool {
        deeplink.contains(BasketModuleNavigation.home.rawValue)
    }
    
    public func execute(deeplink: String) {
        let controller = BasketViewController(nibName: "BasketViewController", bundle: Bundle(for: Self.self))
        sourceViewController?.show(controller, sender: nil)
    }
    
    
}


