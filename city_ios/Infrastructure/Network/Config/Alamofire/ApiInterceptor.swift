//
//  ApiInterceptor.swift
//  city_ios
//
//  Created by Thomas Drège on 08/12/2022.
//

import Foundation
import Alamofire

class ApiInterceptor: RequestInterceptor {
    let retryLimit = 2
    let retryDelay: TimeInterval = 15
    var isRetrying = false

    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var urlRequest = urlRequest
//        urlRequest.headers.add(.authorization(bearerToken: "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE2NzA1NDAxMDAsImV4cCI6MTY3MDU0MzcwMCwicm9sZXMiOlsicGxheWVyIl0sInVzZXJuYW1lIjoidGhvbWFzZHJlZ2UxQGdtYWlsLmNvbSJ9.gT9Yi15CzNokPV8UbwpDuh6tP5NvgoBlzee-LMYNycPjq4f_dkRi6hbHd-66t0kqabuUwsn9Gi4cQQhevOaJs6ifWNWCwkUi2CD0aIl6fcrC9TaE_NwLKpC4Y8hQ03MN_nF11eUAzbP5QqgBkzmw2Dx1jXGcrbPLBjFpGGeKmBLKEBie7XfQu3-9UQD3H7lm7VdzIFuMlZGu03et6RTXpEbLjoR0SklEmJt-0vjPK0Aj9Iz2Srhd6iJIPliKBhEivnnmsY5pC9_lRKsWKboWjXVrTD5QqZ1a0Fu8XHFcoak0HYWDs77AulRiPQZAFazMSkrlKSjsAJXw0a2QLFsf9VRTTSuiE5ZL0k8xWV8zTx_ZoaXJC19GJv4x4wY9O4dU7gZKecgkDyZLz6lkLlatz2gmRSNatH4FrBAvEkId7Qz1x7f-swnbMzPIybIZskdd8zheMZ7_swwJ7E94t07OWB3bpqY0SydzlhAizbBG_FJD8Hto7T0WhvNObuq_mlrb5WUpNjDkpbXsLkUt3A5tvcGWMT1b8hDJcLPP6QdN6v3d7EzOitZOb4PHRepfLLpNGmO7cN8h2I6D42TxiYeDICgluFiNfpswEqdY6METbqCOlm3gXYax_yKiZcIl66J6WUhO8G0w4Bj2qceqcltzScvWwohr0uzQYW1qeJ9sbVY"))
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
