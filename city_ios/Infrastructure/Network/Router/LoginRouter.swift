//
//  LoginRouter.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation
import Alamofire

enum LoginRouter: Router {
    case tokenRequest(body: GetTokensRequest)
    
    var method: HTTPMethod {
        switch self {
        case .tokenRequest:
            return .post
        }
    }
    
    var path: String {
        switch self {
        case .tokenRequest:
            return "/login"
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let url = try baseUrl.asURL().appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method
        
        switch self {
        case .tokenRequest(let body):
            request = try JSONParameterEncoder().encode(body, into: request)
            request.setValue("application/json", forHTTPHeaderField: "Accept")
        }
//        if method == .get {
//            request = try URLEncodedFormParameterEncoder().encode(parameters, into: request)
//        } else if method == .post {
//
//        }
        return request
    }

}
