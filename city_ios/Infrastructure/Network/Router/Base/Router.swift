//
//  Router.swift
//  city_ios
//
//  Created by Thomas Drège on 09/12/2022.
//

import Foundation
import Alamofire

protocol Router: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
}
