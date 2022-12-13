//
//  CButton.swift
//  city_ios
//
//  Created by DREGE Thomas on 25/11/2022.
//

import SwiftUI

struct CButtonReverse: View {
    @State var opacity: CGFloat = 1.0
    
    let buttonText: String
    let action : Void
    
    var body: some View {
        Button(action: {
            action
        }) {
            Text(buttonText.uppercased())
                .fontWeight(.bold)
                .font(.system(size: 20))
                .opacity(opacity)
                .padding(10)
                .foregroundColor(Colors.main)
                .frame(maxWidth: .infinity)
                .overlay(
                    Rectangle()
                        .stroke(Colors.main, lineWidth: 2)
                )
        }.highPriorityGesture(
            DragGesture(minimumDistance: 0)
            .onChanged{ _ in
                opacity = 0.5
            }.onEnded{ _ in
                opacity =  1
            }
        )
    }
}

struct CButton_Previews: PreviewProvider {
    static var previews: some View {
        CButtonReverse(buttonText: "Valider",action: ())
    }
}
