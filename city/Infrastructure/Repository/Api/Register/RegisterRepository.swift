//
//  RegisterRepository.swift
//  city_ios
//
//  Created by DREGE Thomas on 10/10/2022.
//

import Foundation
import Alamofire
import Combine

struct RegisterRepository: RegisterRepositoryProtocol {
    func createNewPlayer() -> AnyPublisher<RegisterResponse, NetworkError> {
        return AF.request("http://127.0.0.1:8000/api/players/38", method: .get)
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

