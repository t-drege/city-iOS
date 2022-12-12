//
//  CErrorTextfieldRouter.swift
//  city_ios
//
//  Created by Thomas Drège on 12/12/2022.
//

import Foundation
import SwiftUI

enum CErrorTextfieldRouter {
    case isEmpty(text :Binding<String>)
    
    var message: String? {
        switch self {
        case .isEmpty(let text) :
            return try? CTextFieldEmptyError.execute(text: text)
        }
    }
}
