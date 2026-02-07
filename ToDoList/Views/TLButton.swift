//
//  TLButton.swift
//  ToDoList
//
//  Created by Terry Gong on 2/7/26.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .frame(height: 35)
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        //Action
    }
}
