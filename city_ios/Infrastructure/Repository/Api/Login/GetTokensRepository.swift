//
//  GetTokensRepository.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation
import Combine
import Alamofire

struct GetTokensRepository: GetTokensRepositoryProtocol {
    func getAllTokens(request: GetTokensRequest) -> AnyPublisher<GetTokensResponse, NetworkError> {
        Api.session.request(LoginRouter.tokenRequest(body: request))
            .validate()
            .publishDecodable(type: GetTokensResponse.self)
            .value()
            .mapError { error in
                print(error)
                return NetworkError.network
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
