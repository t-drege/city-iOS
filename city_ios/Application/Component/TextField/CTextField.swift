//
//  CTextField.swift
//  city_ios
//
//  Created by DREGE Thomas on 19/10/2022.
//

import SwiftUI

struct CTextField: View {
    @Binding var bindingText: String
    
    @State var isSelected: Bool = false
    @State var color: Color = Colors.greyLightgray
    @State var validators: () -> [(Bool, String?)] = {[]}
    @State var isCommit: Bool = false
    
    let placeholder: String
    let type: UIKeyboardType = .default
    
    var image: Image? = nil

    private let sizeLine: CGFloat = 2.0
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                getImage()
                getTextField()
            }
            getLine()
            DisplayTextErrors()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder func getImage() -> some View {
        if let image = image {
            image.foregroundColor(color)
        }
    }
    
    @ViewBuilder func getTextField() -> some View {
        TextField(placeholder , text: $bindingText, onEditingChanged: { isChanging in
            foregroundColor(isChanging)
        }, onCommit: {
            isValidated()
        })
        .keyboardType(type)
    }
    
    @ViewBuilder func getLine() -> some View {
        Rectangle()
            .frame(height: sizeLine, alignment: .bottom)
            .foregroundColor(color)
    }
    
    @ViewBuilder func DisplayTextErrors() -> some View {
        ForEach(getTextErrors()) { errorText in
            Text(errorText.text).foregroundColor(.red)
        }
    }
    
    func getTextErrors() -> [ErrorText] {
        var textErrors: [ErrorText] = []
        if isCommit {
            validators().forEach { validator in
                if validator.0 == false, let textError = validator.1 {
                    textErrors.append(ErrorText(text: textError))
                }
            }
        }
        return textErrors
    }
    
    func foregroundColor(_ isChanging: Bool) {
        if(isChanging) {
            isCommit = false
            color = Colors.main
        }

        if(isChanging == false && isCommit == false) {
            isCommit = false
            color = Colors.greyLightgray
        }
    }
    
    func isValidated()  {
        validators().forEach { validator in
            if validator.0 == false {
                isCommit = true
                color = Color.red
            }
        }
    }
    
}

struct CTextField_Previews: PreviewProvider {
    static var previews: some View {
        CTextField(bindingText: Binding<String>.constant("") ,isSelected: false, validators: {[]}, placeholder: "Text", image: Image(systemSymbol: .personFill))
    }
}
