//
//  Player.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation

struct Player: Identifiable, Codable {
    let id : Int
    let firstname: String
    let lastname: String
    let email: String
    let password: String
    
    private enum CodingKeys: String, CodingKey {
       case id = "id"
       case firstname = "firstname"
       case lastname = "lastname"
       case password = "password"
       case email = "email"
   }
    
    func decode(to decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try container.decodeIfPresent(Int.self, forKey: .id)
        try container.decodeIfPresent(String.self, forKey: .firstname)
        try container.decodeIfPresent(String.self, forKey: .lastname)
    }
    
}
