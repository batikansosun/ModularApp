//
//  DIContainer.swift
//  CoreModule
//
//  Created by Batikan Sosun on 16.03.2023.
//

import Foundation

typealias Factory = (DIContainerService) -> Any

protocol ServiceEntryProtocol: AnyObject{
    var factory: Factory { get }
}

final public class ServiceEntry: ServiceEntryProtocol {
    var factory: Factory
    weak var container: DIContainer?
    
    init(factory: @escaping Factory) {
        self.factory = factory
    }
}

public protocol DIContainerService {
    func register<Service>(type: Service.Type, name: String?, factory: @escaping (DIContainerService) -> Service) -> ServiceEntry
    func resolve<Service>(type: Service.Type, name: String?) -> Service?
}

extension DIContainerService {
    
    @discardableResult
    public func register<Service>(type: Service.Type, name: String? = nil, factory: @escaping (DIContainerService) -> Service) -> ServiceEntry {
        register(type: type, name: name, factory: factory)
    }
    public func resolve<Service>(type: Service.Type, name: String? = nil) -> Service? {
        resolve(type: type, name: name)
    }
}


final public class DIContainer: DIContainerService {
    private var services: [String: ServiceEntryProtocol] = [:]
    public init() {}
    
    @discardableResult
    public func register<Service>(type: Service.Type, name: String?, factory: @escaping (DIContainerService) -> Service) -> ServiceEntry {
        let entry = ServiceEntry(factory: factory)
        entry.container = self
        let key = "\(type)\(name ?? "")"
        services[key] = entry
        return entry
    }
    
    public func resolve<Service>(type: Service.Type, name: String?) -> Service? {
        let key = "\(type)\(name ?? "")"
        if let entry = services[key] {
            return entry.factory(self) as? Service
        }
        return nil
    }
}
