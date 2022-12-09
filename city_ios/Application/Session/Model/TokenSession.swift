//
//  Token.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

final class TokenSession: NSObject, NSCoding, Codable {

    var token: String
    var refreshToken: String
    
    init(token: String, refreshToken: String) {
        self.token = token
        self.refreshToken = refreshToken
    }
    
    required init(coder aDecoder: NSCoder) {
        token = aDecoder.decodeObject(forKey: "token") as? String ?? ""
        refreshToken = aDecoder.decodeObject(forKey: "refreshToken") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(token, forKey: "token")
        coder.encode(refreshToken, forKey: "refreshToken")
    }
}
