//
//  MainView.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import SwiftUI
import UIKit

struct MainView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            TeamView()
                .tabItem {
                    Label("image", systemSymbol: .shieldFill)
                        .foregroundColor(Colors.main)
                }
                .tag(0)
             
            
            
            TeamView()
                .tabItem {
                    Label("image", systemSymbol: .shieldFill)
                        .foregroundColor(Colors.main)
                }.tag(1)
        }
        .toolbarBackground(Color.white, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .accentColor(Colors.main)
//        if(mainViewVM.isLogin == false) {
//            LoginView()
//                .environmentObject(mainViewVM)
//        } else {
//            RegisterView()
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
