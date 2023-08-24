//
//  MainView.swift
//  Mini 3
//
//  Created by Ardi Rakhmat  on 21/08/23.
//

import SwiftUI

struct DashboardView: View{
    
    var body: some View{
        VStack{
            VStack{
                HStack{
                    SearchBarView()
                       .padding()
                    Spacer()
                    HStack{
                            HStack{
                                Image(systemName: "qrcode.viewfinder")
                                    .font(.system(size: 20))
                                Text ("Scan Document")
                            }
                    }
                    .padding(8)
                    .padding( .trailing, 5)
                    .background(Color("LightGreen"))
                    .foregroundColor(.white)
                    //.clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                }
            }
            //Search Bar, Notification, Username Start
            .background(.white)
            //Search Bar, Notification, Username End
            
            //Welcome Back and Add Patient Button Start
            VStack{
                
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Welcome back,")
                            .font(.footnote)
                        Text("drh. William M!")
                    }
                    .padding()
                    Spacer()
                    //Button Add Patients Start
                    HStack{
                            HStack{
                                Image(systemName: "plus")
                                Text ("Add Patients")
                            }
                    }
                    .padding(8)
                    .padding( .trailing, 5)
                    .background(Color("LightGreen"))
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                    //Button Add Patients End
                }
            }
            //Welcome Back and Add Patient Button End
            
            
                HStack{
                    Text("Latest Clients")
                        .padding()
                    Spacer()
                        
                }
                    
                PeopleTable()
            Spacer()
        }
        
        
        
    }
    
}
struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
