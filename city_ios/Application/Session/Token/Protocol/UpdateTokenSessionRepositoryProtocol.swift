//
//  UpdateTokenRepositoryProtocol.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation
import Combine

protocol UpdateTokenSessionRepositoryProtocol {
    func execute(tokenSession: TokenSession)
}
