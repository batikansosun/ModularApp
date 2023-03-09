//
//  BasketModuleNavigation.swift
//  CoreModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import Foundation

public enum BasketModuleNavigation: String {
    case home = "ModuleApp://BASKET/"
    
    public var url: URL {
        URL(string: self.rawValue)!
    }
}
