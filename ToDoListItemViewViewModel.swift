//
//  ToDoListItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

//View model for a single to do list item (each row in items list)


class ToDoListItemViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
