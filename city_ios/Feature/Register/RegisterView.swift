//
//  RegisterView.swift
//  city_ios
//
//  Created by DREGE Thomas on 09/10/2022.
//

import SwiftUI
import SFSafeSymbols

struct RegisterView: View {
    
    @StateObject var registerViewModel = RegisterViewModel()
    
    @State var firstname: String = ""
    @State var lastname: String = ""
   
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                VStack {
                    CTextField(
                        bindingText: $firstname,
                        validators: {[
                            CTextFieldEmptyError.execute(text: $firstname),
                            CTextFieldEmptyError.execute(text: $firstname)
                        ]},
                        placeholder: Localized.Register.Form.firstname,
                        image: Image(systemSymbol: .personFill)
                    )
                }
                .padding(20)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
