//
//  CCircleImage.swift
//  city_ios
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
        VStack {
            if let url = url {
                AsyncImage(url: URL(string: url)) { phase in
//                    if let image = phase.image {
//                        getImageServer(image: image)
//                    } else {
                    getImagePlaceholder()
//                    }
                }
            }
        }
    }
    
    @ViewBuilder func getImageServer(image: Image) -> some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(getCircleImage())
            .shadow(radius: radius)
    }
    
    @ViewBuilder func getImagePlaceholder() -> some View {
        GeometryReader { geo in
            Circle()
                .strokeBorder(colorCircle, lineWidth: geo.size.width / 30)
                .background(Circle().foregroundColor(Colors.greyLightgray))
                .overlay(
                    overImage
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .shadow(radius: radius)
                        .frame(width: geo.size.width / 1.6, height: geo.size.height / 3.2)
                ).frame(width: geo.size.width, height: geo.size.height / 2)
        }
    }
    
    @ViewBuilder func getCircleImage() -> some View {
        Circle()
            .strokeBorder(Colors.main, lineWidth: 10)
    }
    
}

struct CCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CCircleImage()
    }
}
