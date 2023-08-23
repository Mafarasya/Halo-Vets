//
//  PetIdentityCard.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 23/08/23.
//

import SwiftUI

struct PetIdentityCard: View {
        let species: String
        let race: String
        let gender: String
        let birthDate: String
        let age: String
        let weight: String
        let vaccine: String
        let petName: String
        let petProfileImage: String
    var body: some View {
            // Pet Background
            ZStack {
               Image("pet-card")
                    .resizable()
                
                VStack(alignment: .leading) {
                    
                    Text("Pet Identity Card")
                        .font(.system(size: 25, weight: .bold))
                        .offset(x: 30, y: 20)
                    
                    HStack {
                        Spacer()
                        VStack (alignment: .leading, spacing: 5) {
   
                            Text("Species")
                            Text("Race")
                            Text("Gender")
                            Text("Date of Birth")
                            Text("Age")
                            Text("Weight")
                            Text("Vaccine")
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        
                        VStack (alignment: .leading, spacing: 5) {
                            Text(": \(species)")
                            Text(": \(race)")
                            Text(": \(gender)")
                            Text(": \(birthDate)")
                            Text(": \(age) y.o")
                            Text(": \(weight) kg")
                            Text(": \(vaccine)")
                        }
                        
                        Spacer()
                        
                        // Pet Frame
                        VStack {
                            Image(petProfileImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 136.23)
                                .cornerRadius(5)
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Pet Name: ")
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Text(petName)
                                        .font(.system(size: 20, weight: .bold))
                                }
                                .padding(.leading)
                                Spacer()
                            }
                            
                        }
                        .frame(width: 161, height: 213)
                        .background(.white)
                        .cornerRadius(7)
                        .offset(y: -20)
                        Spacer()
                    }
                    .padding(.leading)
                    .font(.system(size: 16, weight: .semibold))

                }

            
        }
            .frame(width: 490, height: 270)


    }
}

struct PetIdentityCard_Previews: PreviewProvider {
    static var previews: some View {
        PetIdentityCard(species: "Cat", race: "Anggora", gender: "Female", birthDate: "18/08/2021", age: "2", weight: "19", vaccine: "15", petName: "Hannah", petProfileImage: "pet-profile")
    }
}
