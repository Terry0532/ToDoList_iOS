//
//  Item.swift
//  ToDoList
//
//  Created by Terry Gong on 10/26/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
