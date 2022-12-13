//
//  NetworkError.swift
//  city_ios
//
//  Created by DREGE Thomas on 10/10/2022.
//

import Foundation
import Alamofire

enum NetworkError: Error {
    
    init(error: AFError) {
        self = .network
    }
    
    case network
    case custom(Int, String, String)
        
    var message: String {
        switch self {
        case .network:
            return "Network Error"
        case .custom(let code, let message, let technicalMessage):
            return "Custom error info are: \(code) -- \(message) -- \(technicalMessage)"
        }
    }
}
