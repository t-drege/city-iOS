//
//  Environment.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation

struct Environment {
    static let infoDictionary: [String: Any] = Bundle.main.infoDictionary ?? ["nil": ""]
    static let baseUrl = infoDictionary["BASE_URL"] as? String ?? ""
}

