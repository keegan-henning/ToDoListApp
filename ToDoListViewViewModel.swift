//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import FirebaseFirestore

import Foundation

//View model for list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userID: String
    
    init(userID: String) {
        self.userID = userID
    }
    
    
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userID)
            .collection("todos")
            .document(id)
            .delete()
    }
}
