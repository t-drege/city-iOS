//
//  CellPlayer.swift
//  city_ios
//
//  Created by Thomas Drège on 03/12/2022.
//

import SwiftUI

struct CCellPlayer: View {
    
    let playerName: String
    let totalGoal: Int
    let valuePlayer: Int
    let id: Int
    let lastElementId: Int
    
    var body: some View {
            VStack(spacing:.zero) {
                HStack() {
                    CCircleImage(url: "https://swiftanytime-content.s3.ap-south-1.amazonaws.com/SwiftUI-Beginner/Async-Image/TestImage.jpeg")
                        .frame(maxWidth: 50)
                        .padding(2)
                    Text(playerName).foregroundColor(.gray)
                    Spacer()
                    HStack(spacing: .zero){
                        CLabelIcon(text: String(totalGoal), image: Image(systemSymbol: .soccerball))
                            .foregroundColor(.gray)
                            .frame(width: 60)
                           
                        CLabelIcon(text: String(valuePlayer), image: Image(systemSymbol: .eurosignCircleFill))
                            .foregroundColor(.gray)
                            .frame(width: 60)
                    }
                    Spacer().frame(width: 10)
                }.padding(5)
                .background(Colors.greyLightgray)
                if(id != lastElementId) {
                    Divider().frame(maxHeight: 1).overlay(.gray)
                }
            }.frame(maxWidth:.infinity, maxHeight: 50)
    }
}

struct CellPlayer_Previews: PreviewProvider {
    static var previews: some View {
        CCellPlayer(playerName: "Thomas Drege", totalGoal: 10, valuePlayer: 10, id: 1, lastElementId: 2)
    }
}
