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
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    func loginAction(email: String, password: String) {
        print(baseUrl)
        tokenRepository.getAllTokens(request: GetTokensRequest(email: email, password: password))
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: { response in
               print(response)
            }).store(in: &cancellableSet)
            
    }
}
