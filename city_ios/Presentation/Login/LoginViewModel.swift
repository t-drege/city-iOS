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
    
    let subject = UserDefaults.standard.publisher(for: \.tokens)
        .sink(receiveCompletion: { error in
            print("une error")
        }, receiveValue: { response in
            print(response ?? "pas la")
        })
        
    func loginAction(email: String, password: String) {
        tokenRepository.getAllTokens(request: GetTokensRequest(email: email, password: password))
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: { response in
                self.updateTokenRepository.execute(tokenSession: TokenSession(token: response.token, refreshToken: response.refreshToken))
            })
            .store(in: &cancellableSet)
            
    }
}
