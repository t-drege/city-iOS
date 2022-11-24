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
    @State var color: Color = Colors.greyCloud
    @State var validator: () -> Bool
    
    var placeholder: String
    var type: UIKeyboardType = .default
    
    private let sizeLine: CGFloat = 2.0

    var body: some View {
        VStack {
            HStack {
                TextField(placeholder , text: $bindingText, onEditingChanged: { isChanging in
                    foregroundColor(isChanging)
                }, onCommit: {
                    isTextValided()
                })
                .keyboardType(type)
            }
            
            Rectangle()
                .frame(height: sizeLine, alignment: .bottom)
                .foregroundColor(color)
        }
    }
    
    func foregroundColor(_ isChanging: Bool) {
        if(isChanging) {
            color = Color.gray
        }
        
        if(isChanging == false && validator() == true) {
            color = Colors.greyCloud
        }
    }
    
    func isTextValided()  {
        if validator() == false {
            color = Color.red
        }
    }
    
}

struct CTextField_Previews: PreviewProvider {
    static var previews: some View {
        CTextField(bindingText: Binding<String>.constant("") ,isSelected: false, validator: testValidator(CTextField_Previews()), placeholder: "Text")
    }
    
    func testValidator() -> Bool {
        return true
    }

}
