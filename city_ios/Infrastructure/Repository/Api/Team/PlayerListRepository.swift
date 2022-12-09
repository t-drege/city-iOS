//
//  PlayerListRepository.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation
import Combine
import Alamofire

struct PlayerListRepository: playerListRepositoryProtocol {
    func getAllPlayers() -> AnyPublisher<[PlayerListResponse], NetworkError> {
        return Api.session.request("http://localhost:8000/api/players", method: .get)
            .validate()
            .publishDecodable(type: [PlayerListResponse].self)
            .value()
            .mapError { error in
                print(error)
                return NetworkError.network
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
