//
//  HeaderView.swift
//  ToDoList
//
//  Created by Terry Gong on 1/10/26.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 30)
            }
            .frame(width: geometry.size.width * 3, height: 300)
            .offset(y: -100)
            .frame(width: geometry.size.width, height: 300)
        }
        .frame(height: 300)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
