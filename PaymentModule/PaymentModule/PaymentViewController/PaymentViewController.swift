//
//  PaymentViewController.swift
//  PaymentModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import UIKit

class PaymentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Payment"
    }
    
    @IBAction private func pressedDismissButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
