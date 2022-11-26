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
        return AF.request("http://127.0.0.1:8000/api/players", method: .get)
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
