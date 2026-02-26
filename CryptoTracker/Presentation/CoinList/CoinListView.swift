//
//  CoinListView.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import SwiftUI

struct CoinListView: View {
    
    @StateObject var viewModel: CoinListViewModel
    
    var body: some View {
        
        NavigationView {
            content
                .navigationTitle("Crypto")
        }
        .onAppear {
            viewModel.fetchCoins()
        }
        
    }
}

extension CoinListView {
    
    var content: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
            } else if let error = viewModel.error {
                Text(error)
            } else {
                List(viewModel.coins) { coin in
                    Text(coin.name)
                    
                }
            }
        }
    }
}
