//
//  TodoListView.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 9/4/2568 BE.
//

import SwiftUI
import FirebaseFirestore

struct TodoListView: View {
    @StateObject var viewModel: TodoListViewModel
    @FirestoreQuery var items: [TodoListItem]
    init(userId: String) {
        self._viewModel = StateObject(wrappedValue: TodoListViewModel(userId: userId))
        self._items = FirestoreQuery(collectionPath:"users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack{
                List(items) { item in
                    Text(item.title)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            } label: {
                                Image(systemName: "trash.fill")
                            }
                            .tint(.red)
                        }
                    
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                    
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
        
    }
}

#Preview {
    TodoListView(viewModel: TodoListViewModel(userId:"O7kcuahqsHQYbQOLlUF5BXw1yUn2"))
}
