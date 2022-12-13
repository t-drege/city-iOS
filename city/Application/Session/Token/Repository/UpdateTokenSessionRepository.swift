//
//  UpdateTokenRepository.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import Foundation

struct UpdateTokenSessionRepository: UpdateTokenSessionRepositoryProtocol {
    func execute(tokenSession: TokenSession) {
        UserDefaults.standard.tokens = tokenSession
        UserDefaults.standard.synchronize()
    }
    
}
