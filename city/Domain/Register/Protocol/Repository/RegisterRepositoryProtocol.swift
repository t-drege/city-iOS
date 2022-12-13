//
//  RegisterGateway.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation
import Combine

protocol RegisterRepositoryProtocol {
   func createNewPlayer() -> AnyPublisher<RegisterResponse, NetworkError>
}
