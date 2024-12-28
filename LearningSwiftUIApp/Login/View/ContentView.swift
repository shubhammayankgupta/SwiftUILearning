//
//  ContentView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isValidate: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Login")
                    .font(.largeTitle).padding()
                Text("Please provide login Details").padding()
                    .font(.subheadline)

                TextField("Email Address", text: $email).padding()
                    .cornerRadius(4.0)
                    .background(Color.gray)
                    .foregroundColor(Color.red)
                if !isValidate {
                    HStack {
                        Text("Please enter email address")
                            .foregroundColor(Color.red)
                        Spacer()
                    }
                }
                
                SecureField("Password", text: $password).padding()
                    .cornerRadius(4.0)
                    .background(Color.gray)
                    .foregroundColor(Color.red)
                HStack {
                    Spacer()
                    Button("Forgot Password") {
                        debugPrint("Forgot Pressed")
                    }
                }.padding()

                NavigationLink(destination: TabbarView()) {
                    Text("Login")
                }
                
                
                
                
//                Button("Login") {
//                    self.isValidate = !(email.isEmpty) && !(password.isEmpty)
//                    debugPrint("Login Pressed")
//                }
//                .buttonStyle(.bordered)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .foregroundColor(Color.white)
//                .padding()
            }.padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
