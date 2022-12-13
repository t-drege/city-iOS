//
//  ApiManager.swift
//  city_ios
//
//  Created by Thomas Drège on 08/12/2022.
//

import Foundation
import Alamofire

class Api {
    static let session: Session = {
        let configuration = URLSessionConfiguration.af.default
        configuration.timeoutIntervalForRequest = 30
        configuration.waitsForConnectivity = true
        let interceptor = ApiInterceptor()
        return Session(
            configuration: configuration,
            interceptor: interceptor
        )
    }()
}
