//
//  BasketViewController.swift
//  BasketModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import UIKit
import CoreModule

class BasketViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Basket"
    }
    
    
    @IBAction private func pressedPaymentButton() {
        UIApplication.shared.open(PaymentModuleNavigation.home.url)
    }

}
