//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    let container = AppDIContainer()
    
    var body: some Scene {
        WindowGroup {
            CoinListView(
                viewModel: CoinListViewModel(
                    fetchCoinsUseCase: container.fetchCoinsUseCase
                )
            )
        }
    }
}
