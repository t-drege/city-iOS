//
//  RegisterViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation
import Combine

class RegisterViewModel: ObservableObject {
    
    @Published var errorMessage: String?
    @Published var registerResponse: RegisterResponse?
    
    private let registerUC : RegisterUseCaseProtocol
    private var cancellableSet: Set<AnyCancellable> = []
    
    init(registerUC: RegisterUseCaseProtocol = RegisterUseCase.shared) {
        self.registerUC = registerUC
    }

    func registerAction() {
        self.registerUC.execute(RegisterRequest())
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: {
                self.registerResponse = $0
            }).store(in: &cancellableSet)
    }
    
}
