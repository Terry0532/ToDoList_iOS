//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Terry Gong on 11/1/25.
//

import Foundation
import FirebaseAuth
import Combine

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isLoggedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
