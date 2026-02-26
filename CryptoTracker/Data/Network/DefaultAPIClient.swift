//
//  DefaultAPIClient.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import Foundation

final class DefaultAPIClient: APIClient {
    
    func request<T: Decodable>(url: URL) async throws -> T {
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200
        else {
            throw NetworkError.invalidResponse
        }
        
        return try JSONDecoder().decode(T.self, from: data)
        
    }
    
}
