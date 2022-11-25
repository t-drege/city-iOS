//
//  CButton.swift
//  city_ios
//
//  Created by DREGE Thomas on 25/11/2022.
//

import SwiftUI

struct CButton: View {
    
    let buttonText: String
    let action : Void
    
    var body: some View {
        Button(action: {
            action
        }) {
            Text(buttonText.uppercased())
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding(10)
                .foregroundColor(Colors.main)
                .frame(maxWidth: .infinity)
                .overlay(
                    Rectangle()
                        .stroke(Colors.main, lineWidth: 2)
                )
        }
    }
}

struct CButton_Previews: PreviewProvider {
    static var previews: some View {
        CButton(buttonText: "Valider",action: ())
    }
}
