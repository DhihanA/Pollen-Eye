//
//  ContentView.swift
//  Pollen-Eye
//
//  Created by Dhihan Ahmed on 8/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var zipcode: String = ""
    
    var body: some View {
        VStack {
            // the TextField for the zipcode
            TextField("Enter your zipcode", text: $zipcode)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad) // need to show number pad since its zipcode
            
            // button to submit the zipcode
            Button(action: {
                // action to perform when the button is pressed
                print("Zipcode entered: \(zipcode)")
                
            }) {
                Text("Check Pollen Levels")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            
            // displaying the zipcode they entered
            if !zipcode.isEmpty {
                Text("You entered: \(zipcode)")
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
