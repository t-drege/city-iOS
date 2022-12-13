//
//  LoginView.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
     
    @StateObject var loginViewModel: LoginViewModel = LoginViewModel()
    
    @State var login : String = ""
    @State var password: String = ""
    
    var body: some View {
        Text("LOGIN")
            .onAppear {
                loginViewModel.loginAction(email: "thomasdrege1@gmail.com", password: "totomax")
            }
        
    }
    
    @ViewBuilder func drawingBackground() -> some View {
        GeometryReader { geo in
           loginDraw()
        }
    }
}

struct loginDraw: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addCurve(to: CGPoint(x: 20, y: 0), control1: CGPoint(x: rect.width / 2, y: rect.height / 6), control2: CGPoint(x: rect.width / 2, y: rect.height))
               path.closeSubpath()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
