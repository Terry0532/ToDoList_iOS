//
//  HeaderView.swift
//  ToDoList
//
//  Created by Terry Gong on 1/10/26.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
                .offset(y: -100)
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text("Get things done")
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
