//
//  SignInWithApple.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 17/08/23.
//

import AuthenticationServices
import SwiftUI

struct SignInWithApple: View {
    
    
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            
            // MARK: Sign In with Apple ID
            VStack {
                
                if userId.isEmpty {
                    SignInButtonView()
                }
                else {
                    // Signed In
                    Text("welcome back! \(firstName) \(lastName)")
                }
                
                
            }
            
        }
        
    }
}

struct SignInButtonView: View {
    
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    
    var body: some View {
        // MARK: handle the request
        SignInWithAppleButton(.continue) { request in
            
            request.requestedScopes = [.email, .fullName]
            
            // MARK: handle the result
        } onCompletion: { result in
            
            switch result {
            case .success(let auth):
                
                switch auth.credential {
                case let appleCredential as ASAuthorizationAppleIDCredential:
                    
                    // get information about the user - should be cache i think
                    // User ID
                    let userId = appleCredential.user
                    
                    // User Info
                    let email = appleCredential.email
                    let firstName = appleCredential.fullName?.givenName
                    let lastName = appleCredential.fullName?.familyName
                    
                    self.email = email ?? ""
                    self.userId = userId
                    self.firstName = firstName ?? ""
                    self.lastName = lastName ?? ""
                    
                    
                default:
                    break
                }
                
            case .failure(let error):
                
                print(error)
                
            }
            
        }
    }
}

struct SignInWithApple_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithApple()
    }
}
