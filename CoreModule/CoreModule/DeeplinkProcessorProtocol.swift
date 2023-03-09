//
//  DeeplinkProcessorProtocol.swift
//  CoreModule
//
//  Created by Batikan Sosun on 7.03.2023.
//

import Foundation

public protocol DeeplinkProcessorProtocol {
    func matches(deeplink: String) -> Bool
    func execute(deeplink: String)
}
