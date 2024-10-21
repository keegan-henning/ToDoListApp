//
//  NewItemsViewViewModel.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


class NewItemsViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    
    init() {}
    
    func save() {
        guard canSave else{
            return
        }
        
        //Get current userID
        guard let uID = Auth.auth().currentUser?.uid else{
            return
        }
        
        // Create a model
        let newID = UUID().uuidString
        let newItem = ToDoListItem(id: newID,
                                   title: title,
                                   dueDate: dueDate.timeIntervalSince1970,
                                   createDate: Date().timeIntervalSince1970,
                                   isDone: false)
        
        
        //Save the model to DB
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uID)
            .collection("todos")
            .document(newID)
            .setData(newItem.asDictionary())
        
    }
        
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
                                                //Making sure it is the right date for timezone edgecases
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
    
}
