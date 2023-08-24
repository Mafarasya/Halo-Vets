//
//  ContentView.swift
//  Mini 3
//
//  Created by Ardi Rakhmat  on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationSplitView{
            ListView()
        }detail:{
            
            DashboardView()
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

