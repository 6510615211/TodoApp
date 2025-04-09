//
//  TodoListItemViewModel.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 9/4/2568 BE.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


class TodoListItemViewModel: ObservableObject {
    func toggleIsDone(item: TodoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todods")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
