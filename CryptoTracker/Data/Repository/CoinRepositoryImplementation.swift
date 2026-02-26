//
//  CoinRepositoryImplementation.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import Foundation

final class CoinRepositoryImplementation: CoinRepository {
    
    private let apiClient: APIClient
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func fetchCoins() async throws -> [Coin] {
        
        let url = URL(string:         "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")!
        
        let dto: [CoinDTO] = try await apiClient.request(url: url)
        
        return dto.map { $0.toDomain() }
        
    }
}
