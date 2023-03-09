//
//  LoginViewController.swift
//  LoginModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import UIKit
import CoreModule

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Login"
    }

    @IBAction private func pressedBasketButton() {
        UIApplication.shared.open(BasketModuleNavigation.home.url)
    }

}
