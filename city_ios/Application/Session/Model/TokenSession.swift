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
    
    required init(coder decoder: NSCoder) {
        token = decoder.decodeObject(forKey: "token") as? String ?? ""
        refreshToken = decoder.decodeObject(forKey: "refreshToken") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(token, forKey: "token")
        coder.encode(refreshToken, forKey: "refreshToken")
    }
}
