//
//  CTextFieldEmptyError.swift
//  city_ios
//
//  Created by DREGE Thomas on 25/11/2022.
//

import Foundation
import SwiftUI

struct CTextFieldEmptyError {
    static func execute(text: Binding<String>) throws -> String? {
        if(text.wrappedValue.isEmpty) {
            return "Ce champs ne doit pas être vide."
        }
        return nil
    }
        
}

