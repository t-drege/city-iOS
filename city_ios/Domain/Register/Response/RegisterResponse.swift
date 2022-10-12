//
//  RegisterResponse.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation

struct RegisterResponse: Decodable, Identifiable {
    
    var id : Int
    var firstname: String
    var lastname: String
    var email: String
    var password: String
    
    private enum CodingKeys: String, CodingKey {
       case id = "id"
       case firstname = "firstname"
       case lastname = "lastname"
       case password = "password"
       case email = "email"
   }
    
    func decode(to decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try container.decodeIfPresent(Int.self, forKey: .id)
        try container.decodeIfPresent(String.self, forKey: .firstname)
        try container.decodeIfPresent(String.self, forKey: .lastname)
    }

}
