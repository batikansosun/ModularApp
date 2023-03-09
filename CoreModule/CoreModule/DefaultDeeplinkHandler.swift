//
//  DefaultDeeplinkHandler.swift
//  CoreModule
//
//  Created by Batikan Sosun on 7.03.2023.
//

import Foundation


public class DefaultDeeplinkHandler: DeeplinkHandlerProtocol {
    
    private var processors: [DeeplinkProcessorProtocol]
    
    public init(processors: [DeeplinkProcessorProtocol]) {
        self.processors = processors
    }
    
    @discardableResult
    public func process(deeplink: String) -> Bool {
        for process in processors {
            if process.matches(deeplink: deeplink) {
                process.execute(deeplink: deeplink)
                return true
            }
        }
        return false
    }
}
