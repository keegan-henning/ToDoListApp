//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start organizing to do's", angle: -15, background: .orange)
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("Email Adress", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                TLButton(title: "Create Account", background: .green) {
                    
                    //Attemtpt registration
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }

        
        }
    }

struct RegisterView_Previews: PreviewProvider{
    static var previews: some View {
        RegisterView()
    }
}
