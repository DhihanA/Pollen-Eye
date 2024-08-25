//
//  ContentView.swift
//  Pollen-Eye
//
//  Created by Dhihan Ahmed on 8/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var zipcode: String = ""  // State variable to hold the zipcode input
    
    var body: some View {
        VStack {
            // Zipcode TextField
            TextField("Enter your zipcode", text: $zipcode)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad) // Ensures that the number pad is shown for zipcode input
            
            // Button to submit the zipcode
            Button(action: {
                // Action to perform when the button is pressed
                // For now, this can be a simple print statement
                print("Zipcode entered: \(zipcode)")
                // Eventually, you would trigger the API call here
            }) {
                Text("Check Pollen Levels")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            
            // Display the entered zipcode (optional)
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
