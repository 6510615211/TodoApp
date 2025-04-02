//
//  LoginView.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 2/4/2568 BE.
//

import SwiftUI

struct LoginView: View {
    @State
    
    var body: some View {
        NavigationView{
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things done", background: .orange)
                Form {
                    TextField("Full Name", text: $viewModel.name).textFieldStyle(DefaultTextFieldStyle())
                    TextField("Email Address", text:$viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title:"Log In", background: .blue) {
                        viewModel.login()
                    }
                    
                }
                VStack {
                    Text("New Around Here")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
            }
        
        }
    }
}

#Preview {
    LoginView()
}
