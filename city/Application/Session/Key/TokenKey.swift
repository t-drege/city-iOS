//
//  TokenKey.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

enum TokenKey: String {
    case tokens = "tokens"
    
    var key: String {
        switch self {
        case .tokens:
            return "tokens"
        }
    }
    
}
