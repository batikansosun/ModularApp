//
//  ViewController.swift
//  MainApp
//
//  Created by Batikan Sosun on 7.03.2023.
//

import UIKit
import BasketModule
import LoginModule
import PaymentModule
import CoreModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // A modular service class instance was instantiated here to validate the correct functioning of modular linking.
        let coreService = CoreService()
        coreService.core()
        
        let loginService = LoginService()
        loginService.login()
        
        let basketSevice = BasketService()
        basketSevice.basket()
        
        let paymentService = PaymentService()
        paymentService.payment()
        
        navigationItem.title = "Main App"
        
    }
    
    @IBAction private func pressedLoginButton() {
        UIApplication.shared.open(LoginModuleNavigation.home.url)
    }
    
}

