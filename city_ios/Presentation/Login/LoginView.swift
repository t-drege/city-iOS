//
//  LoginView.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
     
    @State var login : String
    @State var password: String
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                loginDraw()
                    .foregroundColor(Colors.main)
                HStack {
                    Text("CITY")
                        .foregroundColor(.white)
                }.font(Font.custom("ClearSans-Bold", size: 60))
                    .position(x: geo.size.width / 2 ,y:100)
                
                VStack(spacing: 10){
                    CTextField(bindingText: $login, placeholder: "email")
                    CTextField(bindingText: $password, placeholder: "password")
                }.padding(20)
                .background(Color.white)
                .frame(width: geo.size.width - 60)
            }.edgesIgnoringSafeArea(.all)
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
        LoginView(login: "sdf", password: "sdf")
    }
}
