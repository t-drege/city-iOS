//
//  CCircleImage.swift
//  city_}
//
//  Created by DREGE Thomas on 30/11/2022.
//

import SwiftUI
import SFSafeSymbols

struct CCircleImage: View {
    
    var url: String? = "https://swiftanytime-content.s3.ap-south-1.amazonaws.com/SwiftUI-Beginner/Async-Image/TestImage.jpeg"
    var radius: CGFloat = 0
    var colorCircle: Color = Colors.main
    var overImage: Image = Image(systemSymbol: .person)
    
    var body: some View {
        GeometryReader { geo in
            if let url = url {
                AsyncImage(url: URL(string: url)) { phase in
                    if let image = phase.image {
                        getImageServer(image: image, geo: geo)
                    } else {
                        getImagePlaceholder(geo: geo)
                    }
                }
            }
        }
    }
    
    @ViewBuilder func getImageServer(image: Image, geo: GeometryProxy) -> some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .shadow(radius: radius)
            .overlay(
                getCircleImage(geo: geo)
            ).frame(width: geo.size.width, height: geo.size.height)
    }
    
    @ViewBuilder func getImagePlaceholder(geo: GeometryProxy) -> some View {
        getCircleImage(geo: geo)
            .background(
                Circle()
                .foregroundColor(Colors.greyLightgray)
            )
            .overlay(
                overImage
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                    .clipShape(Rectangle())
                    .shadow(radius: radius)
                    .frame(width: geo.size.width / 1.8, height: geo.size.height / 2.6)
            )
    }
    
    @ViewBuilder func getCircleImage(geo: GeometryProxy) -> some View {
        Circle()
            .strokeBorder(colorCircle, lineWidth: geo.size.height / 30)
    }
    
}
    
struct CCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CCircleImage()
    }
}
