//
//  BrightnessView.swift
//  SiriusNext
//
//  Created by DREGE Thomas on 10/10/2022.
//

import SwiftUI

struct BrightnessView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var brightness: CGFloat = UIScreen.main.brightness
    
    @ObservedObject var viewModel: BrigthnessViewModel = BrigthnessViewModel()
    
    var body: some View {
        VStack{
            header()
            Divider()
            slider()
        }.frame(width: 300, alignment: .top)
    }
}

extension BrightnessView {
    @ViewBuilder func header() -> some View {
        HStack {
            Button("Fermer") {
                presentationMode.wrappedValue.dismiss()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Affichage")
                .bold()
                .frame(alignment: .center)
            
            Spacer()
                .frame(alignment: .trailing)
            
        }
        .padding( EdgeInsets(top: 14, leading: 14, bottom: 0, trailing: 0))
    }
    
    @ViewBuilder func slider() -> some View {
        HStack {
            Text("Luminosité")
            Slider(value: $brightness, in: (0.01)...(1)){_ in
                self.viewModel.storeBrightnessAction(value: self.brightness )
            }.onChange(of: brightness) { newValue in
                        UIScreen.main.brightness = CGFloat(newValue)
                }
            
        }.padding(14)
    }
    
}

struct BrightnessView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Ok")
        //BrightnessView(, viewModel: <#DrivingModalViewModel#>)
    }
}
