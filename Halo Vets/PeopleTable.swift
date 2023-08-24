//
//  PeopleTable.swift
//  Mini 3
//
//  Created by Ardi Rakhmat  on 21/08/23.
//

import SwiftUI

struct Person: Identifiable {
    let noMR: String
    let animalType: String
    let petName: String
    let clientName: String
    let visitDate: String
    let status: String
    let id = UUID()


    //var fullName: String { givenName + " " + familyName }
}




struct PeopleTable: View {
    @State private var people = [
        Person(noMR: "KCG0123", animalType: "Cat Persia", petName: "Chloe", clientName: "Andrew Garfield", visitDate: "18/08/2023", status: "Rawat Inap"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up"),
        Person(noMR: "AJG0123", animalType: "Dog", petName: "Alfa", clientName: "Beta M", visitDate: "16/08/2023" , status: "Check up")
    ]

    var body: some View {
        
            Table(people) {
                TableColumn("No MR.", value: \.noMR)
                TableColumn("Animal Type", value: \.animalType)
                TableColumn("Pet Name", value: \.petName)
                TableColumn("Client Name", value: \.clientName)
                TableColumn("Visit Date", value: \.visitDate)
                TableColumn("Status", value: \.status)
                
            }
        
    }
}
struct PeopleTable_Previews: PreviewProvider {
    static var previews: some View {
        PeopleTable()
    }
}
