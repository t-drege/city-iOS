//
//  city_iosApp.swift
//  city_ios
//
//  Created by DREGE Thomas on 08/10/2022.
//

import SwiftUI

@main
struct city_iosApp: App {
    let manager = DependencyManager()
    
    var body: some Scene {
        WindowGroup {
           LoginView()
        }
    }
}
