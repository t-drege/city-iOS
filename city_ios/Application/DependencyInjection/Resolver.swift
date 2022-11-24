//
//  Resolver.swift
//  city_ios
//
//  Created by DREGE Thomas on 22/11/2022.
//

import Foundation

final class Resolver {
    
    private var storage = [String: AnyObject]()
    
    static let shared = Resolver()
    private init() {}

}

extension Resolver {
    
    static func register<T>(_ dependency: T) {
        shared.add(dependency)
    }

    static func resolve<T>() -> T {
        shared.resolve()
    }
    
    func add<T>(_ injectable: T) {
        let key = String(describing: T.self)
        storage[key] = injectable as AnyObject
    }

    func resolve<T>() -> T {
        let key = String(describing: T.self)
        guard let dependency = storage[key] as? T else {
            fatalError("\(key) has not been added as an injectable object.")
        }
        
        return dependency
    }
    
}
