//
//  CTextFieldEmptyError.swift
//  city_ios
//
//  Created by DREGE Thomas on 25/11/2022.
//

import Foundation
import SwiftUI

struct CTextFieldEmptyError {
    static func execute(text: Binding<String>) -> (Bool, String?) {
        if(text.wrappedValue.isEmpty) {
            return (false, "Ce champs ne doit pas être vide.")
        }
        return (true, nil)
    }
    
}

