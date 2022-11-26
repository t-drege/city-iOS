//
//  DeviceAnnotation.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation
import SwiftUI

@resultBuilder
struct DeviceBuilder {
    static func buildBlock<T>(_ t:T) -> TupleView<T> where T : View {
        if(UIDevice.current.userInterfaceIdiom == .pad) {
            return TupleView(t)
        }
        return TupleView(EmptyView() as! T)
    }
    
}
