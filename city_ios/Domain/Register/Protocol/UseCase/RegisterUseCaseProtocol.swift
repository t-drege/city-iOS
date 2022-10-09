//
//  RegisterUseCaseProtocol.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import Foundation

protocol RegisterUseCaseProtocol {
    func execute(_ request: RegisterRequest) async -> Result<Bool, Error>
}
