//
//  ApiInterceptor.swift
//  city_ios
//
//  Created by Thomas Drège on 08/12/2022.
//

import Foundation
import Alamofire

class ApiInterceptor: RequestInterceptor {
    
    @Inject var repositoryTokenSession: GetTokenRepositoryProtocol
    
    let retryLimit = 2
    let retryDelay: TimeInterval = 15
    var isRetrying = false

    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var urlRequest = urlRequest
        urlRequest.headers.add(.authorization(bearerToken: UserDefaults.standard.tokens.token))
        completion(.success(urlRequest))
    }
    
    func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
           let response = request.task?.response as? HTTPURLResponse
           if request.retryCount < self.retryLimit {
               if let statusCode = response?.statusCode, statusCode == 401, !isRetrying {
                   self.isRetrying = true
                   print("stop")
               } else {
                   completion(.doNotRetry)
               }
           }
       }
}
