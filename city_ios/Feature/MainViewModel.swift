//
//  MainViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var isLogin:Bool = false
    
    func setLogin() {
        print("is log")
    }
}
