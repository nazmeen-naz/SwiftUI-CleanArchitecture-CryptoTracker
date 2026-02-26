//
//  FetchCoinsUseCase.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

final class FetchCoinsUseCase {
    
    private let repository: CoinRepository
    
    init(repository: CoinRepository) {
        self.repository = repository
    }
    
    func execute() async throws -> [Coin] {
        
        try await repository.fetchCoins()
        
    }
}
