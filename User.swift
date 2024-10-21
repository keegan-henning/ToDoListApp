//
//  User.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import Foundation


struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
