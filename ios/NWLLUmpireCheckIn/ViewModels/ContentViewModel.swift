//
//  ContentViewModel.swift
//  NWLLUmpireCheckIn
//
//  Created by Dante Poleselli on 1/21/23.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    private var api = NwllAPI()
    
    @Published var checkIn = CheckInModel()
    
    @Published var result = ""
    
    func submit() {
        Task {
            do {
                try await api.submitCheckIn(body: self.checkIn)
                self.result = "Check-In Successful"
            } catch {
                self.result = "Check-In Failed - \(error)"
            }
        }
    }
}
