//
//  Player.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation
import RealmSwift

final class Player: Object, Identifiable, Codable {
    @Persisted(primaryKey: true) var id : Int
    @Persisted var firstname: String
    @Persisted var lastname: String
    @Persisted var email: String
    @Persisted var password: String
    
    convenience init(firstname: String, lastname: String) {
          self.init()
          self.firstname = firstname
          self.lastname = lastname
    }
    
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
