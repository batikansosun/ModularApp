//
//  PaymentModuleNavigation.swift
//  CoreModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import Foundation

public enum PaymentModuleNavigation: String {
    case home = "ModuleApp://PAYMENT/"
    
    public var url: URL {
        URL(string: self.rawValue)!
    }
}
