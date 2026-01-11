//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Terry Gong on 10/26/25.
//

import SwiftUI
import SwiftData
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
