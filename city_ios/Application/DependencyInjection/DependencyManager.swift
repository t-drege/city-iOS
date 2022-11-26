//
//  DependencyManager.swift
//  city_ios
//
//  Created by DREGE Thomas on 22/11/2022.
//

import Foundation

final class DependencyManager {
    init() {
        addDependencies()
    }
    
    private func addDependencies() {
        Resolver.register(RegisterRepository() as RegisterRepositoryProtocol)
        Resolver.register(PlayerListRepository() as playerListRepositoryProtocol)
    }
    
}
