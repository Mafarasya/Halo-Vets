//
//  ContentView.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 17/08/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            StatusPresent()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
