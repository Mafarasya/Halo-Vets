//
//  ButtonComponents.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 23/08/23.
//

import SwiftUI
struct ButtonComponents: View {
    var title: String
//    @State private var isPressed = false

    var body: some View {
        ZStack {
            Image("button-active")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 700, maxHeight: 52)
//                .scaleEffect(isPressed ? 0.95 : 1.0) // Mengubah skala saat tombol ditekan
            
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
        }
        
    }
}


struct ButtonComponents_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponents(title: "Continue")
    }
}
