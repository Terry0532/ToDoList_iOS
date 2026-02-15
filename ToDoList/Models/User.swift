//
//  User.swift
//  ToDoList
//
//  Created by Terry Gong on 11/1/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
