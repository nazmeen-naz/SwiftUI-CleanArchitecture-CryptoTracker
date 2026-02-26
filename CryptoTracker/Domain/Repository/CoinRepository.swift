//
//  CoinRepository.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

protocol CoinRepository {
    
    func fetchCoins()  async throws -> [Coin]
    
}
