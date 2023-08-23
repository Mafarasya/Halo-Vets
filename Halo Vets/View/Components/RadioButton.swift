//
//  RadioButton.swift
//  Halo Vets
//
//  Created by Mahatmaditya FRS on 23/08/23.
//

import SwiftUI

struct RadioButton: View {
    var title: String
    var options: [String]
    @Binding var selectedOption: Int

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(title)
                    .padding(.leading, 10)
                    .fontWeight(.semibold)

                Picker(selection: $selectedOption, label: Text("")) {
                    ForEach(0..<options.count) { index in
                        Text(options[index]).tag(index)
                            .padding(.trailing, 40)
                    }
                }
                .pickerStyle(.radioGroup)
                .horizontalRadioGroupLayout()
                .padding(.top, 5)
            }
            .font(.system(size: 16))
            .padding(12)
        }
    }
}


struct RadioButton_Previews: PreviewProvider
{
    @State static var selectedOption: Int = 2 // Inisialisasi dengan nilai awal

    static var previews: some View {
        RadioButton(title: "Habitus", options: ["Straight Pine", "Kyphosis", "Lordosis"], selectedOption: $selectedOption)
    }
}
