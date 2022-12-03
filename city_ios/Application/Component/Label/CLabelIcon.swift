//
//  CLabelIconne.swift
//  city_ios
//
//  Created by Thomas Drège on 03/12/2022.
//

import SwiftUI

struct CLabelIcon: View {
    
    let text: String
    let image: Image
    let colorImage : Color = Colors.main
    let sizeText: CGFloat = 16
    
    var body: some View {
        HStack(spacing: .zero) {
            Text(text).font(.system(size: sizeText))
            Spacer().frame(width: 4)
            image.foregroundColor(colorImage)
        }
    }
}

struct CLabelIconne_Previews: PreviewProvider {
    static var previews: some View {
        CLabelIcon(text: "10", image: Image(systemSymbol: .eurosignCircleFill))
    }
}
