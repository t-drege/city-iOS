//
//  GetTokensRequest.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

struct GetTokensRequest: Encodable {
    let email: String
    let password: String
    
    enum CodingKeys: String, CodingKey {
        case email = "email"
        case password = "password"
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.password, forKey: .password)
    }

}
