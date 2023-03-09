//
//  LoginModuleNavigation.swift
//  CoreModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import Foundation

public enum LoginModuleNavigation: String {
    case home = "ModuleApp://LOGIN/"
    
    public var url: URL {
        URL(string: self.rawValue)!
    }
}
