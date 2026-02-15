//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Terry Gong on 11/1/25.
//

import Foundation
import Combine
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var password = ""
    @Published var email = ""
    
    init() {}
    
    func register() {
        guard validate() else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
            guard let userId = authResult?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return false
        }
        
        guard email.contains(Character("@")) && email.contains(Character(".")) else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
