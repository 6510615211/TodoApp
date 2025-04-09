//
//  LoginViewModel.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 2/4/2568 BE.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isEror = false
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { _, error in
            if let error = true
            self.isEror
        }
    }
}
