//
//  PaymentDeeplinkProcessor.swift
//  PaymentModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import Foundation
import CoreModule
import UIKit

public class PaymentDeeplinkProcessor: DeeplinkProcessorProtocol {
    
    private let sourceViewController: UIViewController?
    
    public init(sourceViewController: UIViewController?) {
        self.sourceViewController = sourceViewController
    }
    
    public func matches(deeplink: String) -> Bool {
        deeplink.contains(PaymentModuleNavigation.home.rawValue)
    }
    
    public func execute(deeplink: String) {
        let controller = PaymentViewController(nibName: "PaymentViewController", bundle: Bundle(for: Self.self))
        sourceViewController?.show(controller, sender: nil)
    }
    
    
}
