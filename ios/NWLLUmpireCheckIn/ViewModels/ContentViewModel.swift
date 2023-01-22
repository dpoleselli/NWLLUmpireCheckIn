//
//  ContentViewModel.swift
//  NWLLUmpireCheckIn
//
//  Created by Dante Poleselli on 1/21/23.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    private var api = NwllAPI()
    
    @Published var fullName = ""
    @Published var email = ""
    
    
    @Published var result = ""
    
    func submit() {
        Task {
            do {
                try await api.submitCheckIn(body: CheckInModel(fullName: self.fullName, email: self.email))
                self.result = "Check-In Successful"
            } catch {
                self.result = "Check-In Failed - \(error)"
            }
        }
    }
}
