//
//  CellPlayer.swift
//  city_ios
//
//  Created by Thomas Drège on 03/12/2022.
//

import SwiftUI

struct CCellPlayer: View {
    var body: some View {
        let playerName: String = ""
        let totalGoal: Int = 0
        let valuePlayer: Int = 0
        
        GeometryReader { geo in
            VStack(spacing:.zero) {
                HStack() {
                    CCircleImage(url: "https://swiftanytime-content.s3.ap-south-1.amazonaws.com/SwiftUI-Beginner/Async-Image/TestImage.jpeg")
                        .frame(maxWidth: 50)
                        .padding(2)
                    Text(playerName)
                    Spacer()
                    HStack {
                        CLabelIcon(text: String(totalGoal), image: Image(systemSymbol: .soccerball))
                        
                        CLabelIcon(text: String(valuePlayer), image: Image(systemSymbol: .eurosignCircleFill))
                    }
                    Spacer().frame(width: 10)
                }.padding(5)
                    .listRowSeparatorTint(.blue)
                .background(Colors.greyLightgray)
            }.frame(width: geo.size.width, height: 50)
        }
    }
}

struct CellPlayer_Previews: PreviewProvider {
    static var previews: some View {
        CCellPlayer()
    }
}
