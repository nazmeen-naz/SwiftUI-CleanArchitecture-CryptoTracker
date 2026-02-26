//
//  CoinListViewModel.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import Combine

@MainActor
final class CoinListViewModel: ObservableObject {
    
    @Published var coins: [Coin] = []
    
    @Published var isLoading = false
    
    @Published var error: String?
    
    private let fetchCoinsUseCase: FetchCoinsUseCase
    
    init(fetchCoinsUseCase: FetchCoinsUseCase) {
        
        self.fetchCoinsUseCase = fetchCoinsUseCase
        
    }
    
    func fetchCoins() {
        
        isLoading = true
        
        Task {
            
            do {
                coins = try await fetchCoinsUseCase.execute()
                isLoading = false
            } catch {
                self.error = error.localizedDescription
                self.isLoading = false
            }
        }
    }
}
