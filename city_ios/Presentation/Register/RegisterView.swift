//
//  RegisterView.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerViewModel = RegisterViewModel()
    
    var body: some View {
        Text(registerViewModel.registerResponse?.email ?? "")
            .onAppear {
                registerViewModel.registerAction()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
