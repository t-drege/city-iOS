//
//  RegisterViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation
import Combine

class RegisterViewModel: ObservableObject {
    @Inject var registerRepository: RegisterRepositoryProtocol
    
    @Published var errorMessage: String?
    @Published var registerResponse: RegisterResponse?
    
    private var cancellableSet: Set<AnyCancellable> = []

    func registerAction() {
        self.registerRepository.createNewPlayer()
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: { response in
                self.registerResponse = response
            }).store(in: &cancellableSet)
    }
    
}
