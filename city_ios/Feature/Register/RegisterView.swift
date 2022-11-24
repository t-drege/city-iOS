//
//  RegisterView.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerViewModel = RegisterViewModel()
    
    @State var firstname: String = ""
    @State var lastname: String = ""
   
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                VStack {
                    CTextField(bindingText: $firstname, validator: validate(text: $firstname), placeholder: Localized.Register.Form.firstname
                    )
                }
                .padding(20)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
    
    func validate(text: Binding<String>) -> Bool {
        if(text.wrappedValue == "") {
            return false
        }
        return true
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
