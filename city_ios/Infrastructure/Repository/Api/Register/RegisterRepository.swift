//
//  RegisterRepository.swift
//  city_ios
//
//  Created by DREGE Thomas on 10/10/2022.
//

import Foundation
import Alamofire
import Combine

struct RegisterRepository {
    static let shared: RegisterRepositoryProtocol = RegisterRepository()
    private init() {}
}

extension RegisterRepository: RegisterRepositoryProtocol {
    func createNewPlayer() -> AnyPublisher<RegisterResponse, NetworkError> {
        return AF.request("http://127.0.0.1:8000/api/players/38", method: .post, headers: <#T##HTTPHeaders?#>)
            .validate()
            .publishDecodable(type: RegisterResponse.self)
            .value()
            .mapError { error in
                print(error)
                return NetworkError.network
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

