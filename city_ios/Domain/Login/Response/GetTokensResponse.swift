//
//  GetTokensResponse.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

struct GetTokensResponse: Decodable {
    let token: String
    let refreshToken: String
    
    enum CodingKeys: String, CodingKey {
        case token = "token"
        case refreshToken = "refresh_token"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.token = try container.decode(String.self, forKey: .token)
        self.refreshToken = try container.decode(String.self, forKey: .refreshToken)
    }
    
}
