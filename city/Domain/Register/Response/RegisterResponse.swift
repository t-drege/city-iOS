//
//  RegisterResponse.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation

struct RegisterResponse: Decodable {
    let firstname: String
    let test: String
    
    enum CodingKeys: String, CodingKey {
        case test = "test"
    }
    
    init(from decoder: Decoder) throws {
        let player = try Player(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.test = try container.decode(String.self, forKey: .test)
        firstname = player.firstname
    }
    
}
