//
//  UserDefaultExtension.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

extension UserDefaults {
    // Use on change token session
    @objc var tokens: TokenSession? {
            get {
                return try? JSONDecoder().decode(TokenSession.self, from: object(forKey: TokenKey.tokens.key) as! Data)
            }
            set {
                set(try? JSONEncoder().encode(newValue), forKey: TokenKey.tokens.rawValue)
            }
        }
}
