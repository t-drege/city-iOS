//
//  MainView.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import SwiftUI
import UIKit

struct MainView: View {
    
    //@StateObject var mainViewVM = MainViewModel()
    
    var body: some View {
//        if(mainViewVM.isLogin == false) {
//            LoginView()
//                .environmentObject(mainViewVM)
//        } else {
//            RegisterView()
//        }
       TeamView()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
