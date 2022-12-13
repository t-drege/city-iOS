//
//  RegisterRepositoryMocked.swift
//  city_iosTests
//
//  Created by DREGE Thomas on 27/11/2022.
//

import Foundation
import Combine
import Alamofire

@testable import city_ios
struct RegisterRepositoryMocked : playerListRepositoryProtocol {
    func getAllPlayers() -> AnyPublisher<[city_ios.PlayerListResponse], city_ios.NetworkError> {
        return AF.request("http://127.0.0.1:8000/api/players", method: .get)
            .validate()
            .publishDecodable(type: [PlayerListResponse].self)
            .value()
            .mapError { error in
                print(error)
                return NetworkError.network
            }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }

}
