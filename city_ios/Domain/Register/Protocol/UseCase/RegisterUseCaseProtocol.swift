//
//  RegisterUseCaseProtocol.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation
import Combine

protocol RegisterUseCaseProtocol {
    func execute(_ request: RegisterRequest) -> AnyPublisher<RegisterResponse, NetworkError>
}
