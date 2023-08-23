//
//  ButtonComponents.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 23/08/23.
//

import SwiftUI

struct ButtonComponents: View {
    var body: some View {
        HStack {
            Button {
                print("Button tapped!")
            } label: {
                Text("Continue")
                    .frame(maxWidth: 700)
//                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .semibold))
                    .background(Image("button"))
            }
            .buttonBorderShape(.roundedRectangle)
        }
        .frame(width: 700)
        
        
        
    }
}

struct ButtonComponents_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponents()
    }
}
