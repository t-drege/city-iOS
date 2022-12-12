//
//  CErrorTextField.swift
//  city_ios
//
//  Created by Thomas Drège on 12/12/2022.
//

import Foundation

struct CErrorTextField: Identifiable{
    var id: UUID = UUID()
    var error: CErrorTextfieldRouter
    
    init(_ error: CErrorTextfieldRouter) {
        self.error = error
    }
}
