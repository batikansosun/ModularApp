//
//  DeeplinkHandlerProtocol.swift
//  CoreModule
//
//  Created by Batikan Sosun on 7.03.2023.
//

import Foundation
public protocol DeeplinkHandlerProtocol {
    @discardableResult
    func process(deeplink: String) -> Bool
}
