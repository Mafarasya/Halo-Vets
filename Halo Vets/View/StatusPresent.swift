//
//  StatusPresent.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 22/08/23.
//

import SwiftUI

struct StatusPresent: View {
    // MARK: Variable for Pets
    @State private var petWeight : Int = 0
    @State private var petTemperature : Int = 0
    @State private var petPulseFreq: Int = 0
    @State private var petBreathFreq: Int = 0
    @State private var petHeartRate: Int = 0
    
    @State private var habitusSelected = 10
    @State private var nutritionSelected = 10
    @State private var bodySelected = 10
    @State private var behaviourSelected = 10
    @State private var postureSelected = 10
    @State private var adaptionSelected = 10
    @State private var AwarenessSelected = 10
    
    @State private var selectedOption: Int = 1 // Inisialisasi dengan opsi yang dipilih
    
    @State private var clicked = 0
    
    
    // formatter for decimal number
    //    let numberFormatter: NumberFormatter = {
    //            let formatter = NumberFormatter()
    //            formatter.numberStyle = .decimal
    //            return formatter
    //        }()
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Status Present")
                        .font(.system(size: 24, weight: .bold))
                }
                
                PetIdentityCard(species: "Cat", race: "Anggora", gender: "Male", birthDate: "19/08/2021", age: "29", weight: "19", vaccine: "Complete", petName: "Kepin", petProfileImage: "pet-profile")
                    .padding(30)
                
                
                // MARK: Row 1
                VStack(alignment: .leading) {
                    HStack {
                        // Column Weight & Pulse
                        VStack(alignment: .leading) {
                            // Weight
                            VStack(alignment: .leading) {
                                Text("Weight (Kg)")
                                    .fontWeight(.semibold)
                                
                                TextField(
                                    "ex: 17 kg",
                                    value: $petWeight,
                                    format: .number
                                )
//                                Picker("", selection: $petWeight){
//                                    ForEach(1...100, id: \.self) { //<-
//                                        Text("\($0) x / minutes")
//                                    }
//                                }
//                                .offset(x: -7)
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 619)
                                
//                                Picker("", selection: $petWeight){
//                                    ForEach(1...100, id: \.self) { //<-
//                                        Text("\($0) x / minutes")
//                                    }
//                                }

                                
                            }
                            .padding(5)
                            
                            // Pulse Frequency
                            VStack(alignment: .leading) {
                                Text("Pulse Frequency ")
                                    .font(.system(size: 16, weight: .semibold))
                                
                                HStack {
                                    
                                    TextField(
                                        "ex: 17 kg",
                                        value: $petPulseFreq,
                                        format: .number
                                    )
                                    .foregroundColor(.black)
                                    .textFieldStyle(.roundedBorder)
                                    .frame(maxWidth: 482)
                                    
                                    
                                    Text("x / minutes")
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(.horizontal)
                                }
                            }
                            .padding(5)
                            
                            
                            // Heart Rate
                            VStack(alignment: .leading) {
                                Text("Heart Rate ")
                                    .font(.system(size: 16, weight: .semibold))
                                
                                HStack {
                                    TextField(
                                        "ex: 4 x / minutes",
                                        value: $petHeartRate,
                                        format: .number
                                    )
                                    .textFieldStyle(.roundedBorder)
                                    .frame(maxWidth: 482)
                                    Text("x / minutes")
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(.horizontal)
                                }
                            }
                            .padding(5)
                            
                            
                        }
                        
                        // Column Tempt & Breath
                        VStack(alignment: .leading) {
                            
                            // Temperature
                            VStack(alignment: .leading) {
                                Text("Temperature (°C)")
                                    .font(.system(size: 16, weight: .semibold))
                                TextField(
                                    "ex: 17 kg",
                                    value: $petWeight,
                                    format: .number
                                )
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 619)
                            }
                            .padding(5)
                            
                            // Breath Frequency
                            VStack(alignment: .leading) {
                                Text("Breath Frequency ")
                                    .font(.system(size: 16, weight: .semibold))
                                
                                HStack {
                                    TextField(
                                        "ex: 17 kg",
                                        value: $petWeight,
                                        format: .number
                                    )
                                    .textFieldStyle(.roundedBorder)
                                    .frame(maxWidth: 482)
                                    Text("x / minutes")
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(.horizontal)
                                }
                            }
                            .padding(5)
                            
                            Spacer()
                            
                            VStack {
                                Text("")
                            }
                            .padding(5)
                        }
                        
                    }
                    
                    
                    // Heart Rate
                    //                        VStack(alignment: .leading) {
                    //                            Text("Heart Rate ")
                    //                                .font(.system(size: 16, weight: .semibold))
                    //
                    //                            HStack {
                    //                                TextField(
                    //                                    "ex: 4 x / minutes",
                    //                                    value: $petHeartRate,
                    //                                    formatter: numberFormatter
                    //                                )
                    //                                .textFieldStyle(.roundedBorder)
                    //                                .frame(maxWidth: 482)
                    //                                Text("x / minutes")
                    //                                    .font(.system(size: 16, weight: .semibold))
                    //                                    .padding(.horizontal)
                    //                            }
                    //                        }
                    //                        .padding(5)
                    
                }
                .font(.system(size: 16))
                .padding()
                .frame(maxWidth: 1338)
                .padding(.vertical)
                .background(Color("bg-fill-gray"))
                .cornerRadius(8)
                
                
                // MARK: Row 2
                HStack {
                    VStack(alignment: .leading) {
                        // Habitus
                        RadioButton(title: "Habitus", options: ["Straight Pine", "Kyphosis", "Lordosis", "Scolliosis"], selectedOption: $habitusSelected)
                        
                        // Nutrition
                        RadioButton(title: "Nutrition", options: ["Good", "Enough", "Bad"], selectedOption: $nutritionSelected)
                        
                        // Body Growth
                        RadioButton(title: "Body Growth", options: ["Good", "Bad"], selectedOption: $bodySelected)
                        
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: 1338)
                .background(Color("bg-fill-gray"))
                .cornerRadius(8)
                .padding(.top)
                
                // MARK: Row 3
                HStack {
                    VStack(alignment: .leading) {
                        // Behavior
                        RadioButton(title: "Behavior", options: ["Tame", "Wild"], selectedOption: $behaviourSelected)
                        
                        // Standing Posture
                        RadioButton(title: "Standing Posture", options: ["Good", "Bad"], selectedOption: $postureSelected)
                        
                        // Environment Adaption
                        RadioButton(title: "Environment Adaption", options: ["Good", "Less", "Aggressive", "Afraid"], selectedOption: $adaptionSelected)
                        
                        // Awareness Level
                        RadioButton(title: "Awareness Level", options: ["Alert", "Responsive to pain", "Responsive to voice", "Unresponsive"], selectedOption: $AwarenessSelected)
                        
                        
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: 1338)
                .background(Color("bg-fill-gray"))
                .cornerRadius(8)
                .padding(.top)
            }
            .padding()
            
            ButtonComponents(title: "Continue")
                .onTapGesture {
                    // action
                    clicked = clicked + 1
                    // test
                    print("Clicked \(clicked) time")
                }
                .padding(.top, 40)
            
            
        }
        .frame(minWidth: 300, idealWidth: 400, maxWidth: .infinity, minHeight: 200, idealHeight: 400, maxHeight: .infinity)
        
        .background(Color("db-bg-color"))
        
        
    }
    
}

struct StatusPresent_Previews: PreviewProvider {
    static var previews: some View {
        StatusPresent()
            .frame(width: 1512, height: 2040) // Adjust the frame size as needed for your macOS app
        
    }
}

