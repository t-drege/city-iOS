//
//  RegisterViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation

class RegisterViewModel: ObservableObject {
    private let UC : RegisterUseCaseProtocol
    
    init(register: RegisterUseCaseProtocol) {
        self.UC = register
    }
    
    @Published var errorMessage = ""
    //@Published var contacts : [ContactResponseModel] = []
    
    func test() async {
        let result = await self.UC.execute(RegisterRequest())
        switch result {
        case .success(_):
            self.errorMessage = "o"
        case .failure(_):
            self.errorMessage = "o"
        }
    }
}
