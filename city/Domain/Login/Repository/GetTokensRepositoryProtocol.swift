//
//  GetTokensRepository.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation
import Combine

protocol GetTokensRepositoryProtocol {
    func getAllTokens(request: GetTokensRequest) -> AnyPublisher<GetTokensResponse, NetworkError>
}
