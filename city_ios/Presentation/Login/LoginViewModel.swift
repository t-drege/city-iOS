//
//  LoginViewModel.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Inject var tokenRepository: GetTokensRepositoryProtocol
    @Inject var updateTokenRepository: UpdateTokenSessionRepositoryProtocol
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    func loginAction(email: String, password: String) {
        tokenRepository.getAllTokens(request: GetTokensRequest(email: email, password: password))
            .flatMap { tokens in
                self.updateTokenRepository.execute(tokenSession: TokenSession(token: tokens.token, refreshToken: tokens.refreshToken))
                return UserDefaults.standard.publisher(for: \.tokens)
            }
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: { response in
                print(response)
            })
            .store(in: &cancellableSet)            
    }
    
}
