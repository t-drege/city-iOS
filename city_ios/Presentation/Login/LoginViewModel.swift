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
    @Inject var tokenSessionRepository: GetTokenRepositoryProtocol
    @Inject var updateTokenRepository: UpdateTokenSessionRepositoryProtocol
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    func loginAction(email: String, password: String) {
        print(baseUrl)
        tokenRepository.getAllTokens(request: GetTokensRequest(email: email, password: password))
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: { response in
                self.updateTokenRepository.execute(tokenSession: TokenSession(token: response.token, refreshToken: response.refreshToken))
                
                print(self.tokenSessionRepository.getTokenSession())
            }).store(in: &cancellableSet)
            
    }
}
