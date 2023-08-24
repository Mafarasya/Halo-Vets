//
//  SearchBarView.swift
//  Mini 3
//
//  Created by Ardi Rakhmat  on 23/08/23.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var searchText: String = ""
    var body: some View {
        HStack{
            
            Image(systemName: "magnifyingglass")
            TextField("Search for...", text: $searchText)
                //.fill(Color.red)
                .font(.headline)
            .frame(maxWidth: 422)
                
                
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
