//
//  DependencyManager.swift
//  city_ios
//
//  Created by DREGE Thomas on 22/11/2022.
//

import Foundation

final class DependencyManager {
    
    init() {
        if ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] != nil {
            // Code only executes when tests are running
        }
        addDependencies()
    }
    
    private func addDependencies() {
        Resolver.register(RegisterRepository() as RegisterRepositoryProtocol)
        Resolver.register(PlayerListRepository() as playerListRepositoryProtocol)
    }
    
}
