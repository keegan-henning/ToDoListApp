//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//


import SwiftUI
import FirebaseCore

@main
struct ToDoListAppApp: App {
    init(){
    FirebaseApp.configure()
}

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
