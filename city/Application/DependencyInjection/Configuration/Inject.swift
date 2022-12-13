//
//  Inject.swift
//  city_ios
//
//  Created by DREGE Thomas on 22/11/2022.
//

import Foundation

@propertyWrapper
struct Inject<T> {
    let wrappedValue: T
    
    init() {
        self.wrappedValue = Resolver.resolve()
    }
    
}
