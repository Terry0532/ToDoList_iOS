//
//  LoginView.swift
//  ToDoList
//
//  Created by Terry Gong on 11/1/25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
