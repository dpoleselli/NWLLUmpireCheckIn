//
//  ContentView.swift
//  NWLLUmpireCheckIn
//
//  Created by Dante Poleselli on 1/21/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("NWLL Umpire Check-In")
                .font(.title)
            
            Text("Please check in for your game once you arrive at the field").multilineTextAlignment(.center)

            Form {
                TextField("Full Name", text: $viewModel.checkIn.fullName)
                TextField("Email", text: $viewModel.checkIn.email).keyboardType(.emailAddress)
                Button("Submit", action: viewModel.submit)
            }
            Text(viewModel.result)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
