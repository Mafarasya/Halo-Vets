//
//  ListView.swift
//  Mini 3
//
//  Created by Ardi Rakhmat  on 21/08/23.
//

import SwiftUI

struct ListView: View{
    var body: some View{
        VStack{
//            Image(systemName: "sportscourt.fill")
//                        .font(.system(size: 80))
            Image("Logo")
                .frame(width: 185, height: 54)
                
            
                
                    List {
                        Text("ANALYTICS")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("DashboardFont"))
                        NavigationLink(destination: PeopleTable()) {
                            Label("Dashboard", systemImage: "square.grid.2x2.fill")
                                .foregroundColor(Color("DashboardFont"))
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .padding(.bottom)
                        
                        Text("BASE")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("DashboardFont"))
                        NavigationLink (destination: PeopleTable()) {
                            Label("Clients", systemImage: "person.2")
                                .foregroundColor(Color("DashboardFont"))
                                .font(.system(size: 14, weight: .semibold))
                        }
                        
                        NavigationLink (destination: PeopleTable()) {
                            Label("Animals", systemImage: "pawprint")
                                .foregroundColor(Color("DashboardFont"))
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .padding(.bottom)
                        
                        Text("OTHERS")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("DashboardFont"))
                        
                        NavigationLink (destination: PeopleTable()) {
                            Label("Settings", systemImage: "gearshape")
                                .foregroundColor(Color("DashboardFont"))
                                .font(.system(size: 14, weight: .semibold))
                        }
                        
                        Spacer(minLength: 400)
                        
                       
                        
                        
                        
                            
                    }
            VStack(alignment: .leading){
                VStack{
                    Image("RobertLanza")
                    
                        .frame(width:75, height:50)
                        .clipShape(Circle())
                        .padding(.trailing, 30)
                        
                    VStack(alignment: .leading){
                        Text("Robert Lanza")
                        Text("Veterinary")
                            .font(.footnote)
                    }
                    .foregroundColor(Color("DashboardFont"))
                    
                    
                }
                
                
            }
            .padding(.trailing, 75)
            Spacer()
            
                
            
            
        }
        .background(Color("DashboardColor"))
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
