//
//  SignInWithApple.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 17/08/23.
//

import AuthenticationServices
import SwiftUI

struct SignInWithApple: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            
            // MARK: Sign In with Apple ID
            VStack {
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
                            
                        default:
                            break
                        }
                        
                    case .failure(let error):
                        
                        print(error)
                        
                    }
                    
                }
            }
            .navigationTitle("Sign In")
        }
    }
}

struct SignInWithApple_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithApple()
    }
}
