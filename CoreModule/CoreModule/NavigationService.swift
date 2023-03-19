//
//  NavigationService.swift
//  MainApp
//
//  Created by Batikan Sosun on 14.03.2023.
//

import Foundation
import UIKit
import Swinject

public protocol NavigationService {
    var navigationController: UINavigationController { get set }
    
    func navigateToLoginModule()
    func navigateToBasketModule()
    func navigatePaymentModule()
    func popToRootViewController(animated: Bool)
}



public protocol PresentableView {
    func toPresent() -> UIViewController
}

public extension PresentableView where Self: UIViewController {
    func toPresent() -> UIViewController {
        return self
    }
}


public protocol PresentableLoginView: PresentableView {}
public protocol PresentableBasketView: PresentableView {}
public protocol PresentablePaymentView: PresentableView {}



