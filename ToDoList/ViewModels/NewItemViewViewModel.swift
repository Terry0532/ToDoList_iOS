//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Terry Gong on 11/1/25.
//

import Foundation
import Combine

class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return false }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else { return false }
        
        return true
    }
}
