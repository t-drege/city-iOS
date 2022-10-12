//
//  RegisterUseCase.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation
import Combine

struct RegisterUseCase {
    static let shared: RegisterUseCaseProtocol = RegisterUseCase()
    
    let repository: RegisterRepositoryProtocol
    
    init(repository: RegisterRepositoryProtocol = RegisterRepository.shared) {
        self.repository = repository
    }
}

extension RegisterUseCase: RegisterUseCaseProtocol {
    func execute(_ request: RegisterRequest) -> AnyPublisher<RegisterResponse, NetworkError> {
        return self.repository.createNewPlayer()
    }
    
}
