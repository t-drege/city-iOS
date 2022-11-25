//
//  ViewProtocol.swift
//  city_ios
//
//  Created by DREGE Thomas on 25/11/2022.
//

import Foundation
import SwiftUI

public protocol ViewProtocol {

    associatedtype Body : View

    var body: Self.Body { get }
}
