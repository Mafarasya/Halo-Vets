//
//  SignUpView.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 20/08/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var confirmPassword : String = ""
    @State private var isRegistered : Bool = false
    
    
    var body: some View {
        NavigationSplitView {
            VStack {
                Text("Hello World")
            }
        } detail: {
            VStack {
                        Text("Sign Up")
                            .font(.largeTitle)
                            .padding()

                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        SecureField("Confirm Password", text: $confirmPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        Button(action: {
                            // Perform validation and registration logic here.
                            if isValidSignUp() {
                                isRegistered = true
                            }
                        }) {
                            Text("Sign Up")
//                                .padding()
//                                .background(Color.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)
                        }
                        .padding()

                        NavigationLink(
                            destination: SignInView(),
                            isActive: $isRegistered,
                            label: { Text("Already have an account? Sign In") }
                        )
                    }
                    .navigationTitle("Sign Up")
        }
        
    }
    
    private func isValidSignUp() -> Bool {
            // Implement validation logic here.
            // For this example, we'll assume a simple validation.
            return !username.isEmpty && password == confirmPassword
        }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
