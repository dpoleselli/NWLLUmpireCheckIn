//
//  NwllAPI.swift
//  NWLLUmpireCheckIn
//
//  Created by Dante Poleselli on 1/21/23.
//

import Foundation

enum NwllAPIError: Error {
    case couldNotCreateUrl
    case badResponse(statusCode: Int)
}

struct NwllAPI {
    private var session = URLSession.shared
    private var decoder = JSONDecoder()
    private var encoder = JSONEncoder()
    
    func submitCheckIn(body: CheckInModel) async throws -> CheckInResponseModel {
        guard let url = URL(string: "http://localhost:3000/checkin") else {
            throw NwllAPIError.couldNotCreateUrl
        }
        
        var request = URLRequest(
            url: url
        )
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let jsonBody = try encoder.encode(body)
       
        let (data, response) = try await session.upload(for: request, from: jsonBody)
        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 {
            throw NwllAPIError.badResponse(statusCode: httpResponse.statusCode)
        }

        let resp = try decoder.decode(CheckInResponseModel.self, from: data)
        return resp
    }

}
