//
//  StatusPresent.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 22/08/23.
//

import SwiftUI

struct StatusPresent: View {
    // MARK: Variable for Pets
    @State private var petWeight : Float = 0.0
    @State private var petTemperature : Float = 0.0
    @State private var petPulseFreq: Int = 0
    @State private var petBreathFreq: Int = 0
    @State private var petHeartRate: Int = 0
    
    @State private var habitusSelected = 0
    @State private var nutritionSelected = 0
    @State private var bodySelected = 0
    @State private var behaviourSelected = 0
    @State private var postureSelected = 0
    @State private var adaptionSelected = 0
    @State private var AwarenessSelected = 0

    // formatter for decimal number
    let numberFormatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Status Present")
                        .font(.system(size: 24, weight: .bold))
                }
                
                Image(systemName: "creditcard.fill")
                    .font(.system(size: 200))
                    .foregroundColor(.green)
                
                // MARK: Row 1
                VStack(alignment: .leading) {
                    HStack {
                        // Column Weight & Pulse
                        VStack(alignment: .leading) {
                            // Weight
                            VStack(alignment: .leading) {
                                Text("Weight (Kg)")
                                    .font(.system(size: 16, weight: .semibold))
                                
                                TextField(
                                    "ex: 17 kg",
                                    value: $petWeight,
                                    formatter: numberFormatter
                                )
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 619)
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
                                        formatter: numberFormatter
                                    )
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
                                        formatter: numberFormatter
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
                                    formatter: numberFormatter
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
                                        formatter: numberFormatter
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
                .padding()
                .frame(maxWidth: 1338)
                .padding(.vertical)
                .background(Color("bg-fill-gray"))
                .cornerRadius(8)
                
                
                // MARK: Row 2
                HStack {
                    
                    // Habitus
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Habitus")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            
                            Picker(selection: $habitusSelected, label: Text("")) {
                                Text("Straight Pine").tag(1)
                                Text("Kyphosis").tag(2)
                                Text("Lordosis").tag(3)
                                Text("Scolliosis").tag(4)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
                        // Nutrition
                        VStack (alignment: .leading) {
                            Text("Nutrition")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            Picker(selection: $nutritionSelected, label: Text("")) {
                                Text("Good").tag(1)
                                Text("Enough").tag(2)
                                Text("Bad").tag(3)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
                        // Body Growth
                        VStack (alignment: .leading) {
                            Text("Body Growth")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            Picker(selection: $bodySelected, label: Text("")) {
                                    Text("Good").tag(1)
                                    Text("Bad").tag(2)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
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
                    // Behavior
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Behavior")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            
                            Picker(selection: $behaviourSelected, label: Text("")) {
                                Text("Tame").tag(1)
                                Text("Wild").tag(2)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
                        // Standing Posture
                        VStack (alignment: .leading) {
                            Text("Standing Posture")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            Picker(selection: $postureSelected, label: Text("")) {
                                Text("Good").tag(1)
                                Text("Bad").tag(2)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
                        // Environment Adaption
                        VStack (alignment: .leading) {
                            Text("Environment Adaption")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            Picker(selection: $AwarenessSelected, label: Text("")) {
                                Text("Good").tag(1)
                                Text("Less").tag(2)
                                Text("Aggresive").tag(3)
                                Text("Affraid").tag(4)
                                Text("Stressed").tag(5)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
                        // Awareness Level
                        VStack (alignment: .leading) {
                            Text("Awareness Level")
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                            Picker(selection: $AwarenessSelected, label: Text("")) {
                                Text("Alert").tag(1)
                                Text("Responsive to pain").tag(2)
                                Text("Responsive to Voice").tag(3)
                                Text("Unresponsive").tag(4)
                            }
                            .fontWeight(.medium)
                            .pickerStyle(.radioGroup)
                            .horizontalRadioGroupLayout()
                            .padding(.top, 5)
                        }
                        .font(.system(size: 16))
                        .padding(12)
                        
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
            
            ButtonComponents()


        }
        .frame(minWidth: 300, idealWidth: 400, maxWidth: .infinity, minHeight: 200, idealHeight: 400, maxHeight: .infinity)

        .background(Color("db-bg-color"))


    }
    
}


// MARK: Textfield ViewModifier
// to customize the textfield height
//
//struct MyTextFieldStyle: TextFieldStyle {
//    func _body(configuration: TextField<Self._Label>) -> some View {
//        configuration
//        .padding(30)
//        .background(.white)
//        .background(
//            RoundedRectangle(cornerRadius: 6, style: .continuous)
//        ).padding()
//    }
//}


struct RadioButtonView: View {
    var index: Int
    @Binding var selectedOption: Int
    var body: some View {
        Button(action: {
            selectedOption = index
        }) {
            HStack {
                Image(systemName: self.selectedOption == self.index ? "circle.circle.fill" : "circle")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(self.selectedOption == self.index ? .black: .brown)
                
                Text("Option \(index)")
            }
        }
    }
}

struct StatusPresent_Previews: PreviewProvider {
    static var previews: some View {
        StatusPresent()
            .frame(width: 1512, height: 2040) // Adjust the frame size as needed for your macOS app

    }
}

