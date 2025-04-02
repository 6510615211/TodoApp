//
//  MainViewModel.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 2/4/2568 BE.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    @Published var currentUserId = ""
    
    private var handler: AuthStateDidChangeListenerHandle?
    init() {
        handler = Auth.auth().addStateDidChangeListener { _, user in DispatchQueue.main.async {
            self.currentUserId = user?.uid ?? ""
        }
    }
}
