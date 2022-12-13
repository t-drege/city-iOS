//
//  GetTokenRepository.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

struct GetTokenRepository: GetTokenRepositoryProtocol {
    func getTokenSession() -> TokenSession {
        let data = UserDefaults.standard.object(forKey: TokenKey.tokens.rawValue)
        return try! JSONDecoder().decode(TokenSession.self, from: data as! Data)
    }
}
