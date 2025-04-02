//
//  ContentView.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 2/4/2568 BE.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn,
           !viewModel.currentUserId.isEmpty {
            
        } else {
            LoginView()
        }
    }
    var accountView: some View {
        TabView {
            
            
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
    
}

#Preview {
    MainView()
}
