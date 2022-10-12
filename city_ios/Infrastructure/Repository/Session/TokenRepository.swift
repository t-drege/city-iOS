//
//  TokenRepository.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import Foundation

protocol TokenRepositoryProtocol {
    func setUserToken(token:String)
    func getUserToken(token:String)
}

struct TokenRepository: TokenRepositoryProtocol {
    func setUserToken(token: String) {
        <#code#>
    }
    
    func getUserToken(token: String) {
        <#code#>
    }
}
