//
//  LogInView.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import SwiftUI

struct LogInView: View {
    
    @StateObject var viewModel = LogInViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                //Login form
                Form {
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    TLButton(title: "Log in", background: .blue) {
                        
                        //Attemtpt log in
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                //Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                    
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
            
        }
    }
}
    
    struct LogInView_Previews: PreviewProvider{
        static var previews: some View {
            LogInView()
        }
    }
