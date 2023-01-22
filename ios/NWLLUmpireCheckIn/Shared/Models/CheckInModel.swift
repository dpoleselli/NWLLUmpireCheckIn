//
//  CheckInModel.swift
//  NWLLUmpireCheckIn
//
//  Created by Dante Poleselli on 1/21/23.
//

import Foundation

struct CheckInModel: Codable {
    var fullName: String
    var email: String
    
    init(fullName: String? = "", email: String? = ""){
        self.fullName = fullName!
        self.email = email!
    }
}
