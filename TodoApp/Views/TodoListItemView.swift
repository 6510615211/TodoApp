//
//  TodoListItemView.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 9/4/2568 BE.
//

import SwiftUI

struct TodoListItemView: View {
    @StateObject var viewModel = TodoLisItemtViewModel()
    let item: TodoListItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    .bold()
                Text(
                    "\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time:.shortened))"
                )
                .font(.footnote)
                .foregroundStyle(Color(.secondaryLabel))
                
            }
            Spacer()
            
            Button(){
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill": "circle")
            }
        }
    }
}

#Preview {
    TodoListItemView(
        item: TodoListItem(
            id: "123"
            title: "Get Milk"
            dueDate: Date().timeIntervalSince1970,
            createDate: Date().timeIntervalSince1970,
            
        )
    )
}
