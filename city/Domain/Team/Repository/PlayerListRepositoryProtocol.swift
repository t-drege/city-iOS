//
//  PlayerListProtocol.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation
import Combine

protocol playerListRepositoryProtocol {
    func getAllPlayers() -> AnyPublisher<[PlayerListResponse], NetworkError>
}
