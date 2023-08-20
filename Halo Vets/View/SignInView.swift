//
//  SignInView.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 20/08/23.
//

import SwiftUI

struct SignInView: View {
    @State private var username: String = ""
       @State private var password: String = ""
       @State private var isAuthenticated: Bool = false

    
    var body: some View {
        NavigationSplitView {
            
        } detail: {
            VStack {
                        Text("Sign In")
                            .font(.largeTitle)
                            .padding()

                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        Button(action: {
                            // Perform validation and authentication logic here.
                            if isValidSignIn() {
                                isAuthenticated = true
                            }
                        }) {
                            Text("Sign In")
    //                            .padding()
    //                            .background(Color.blue)
    //                            .foregroundColor(.white)
    //                            .cornerRadius(10)
                        }
                        .padding()
                
                        
                
                        NavigationLink(
                            destination: MainView(),
                            isActive: $isAuthenticated,
                            label: { EmptyView() }
                        )
                    }
                    .navigationTitle("Sign In")
        }
       
    }
    
    private func isValidSignIn() -> Bool {
           // Implement validation and authentication logic here.
           // For this example, we'll assume a simple validation.
           return username == "user" && password == "password"
       }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
