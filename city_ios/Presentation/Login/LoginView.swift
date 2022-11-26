//
//  LoginView.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: EmptyView()) {
                    Text("PASS")
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) .background(Color.green)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
