//
//  AppDIContainer.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import Foundation

final class AppDIContainer {
    
    lazy var apiClient: APIClient = {
        DefaultAPIClient()
    }()
    
    lazy var coinRepository: CoinRepository = {
        CoinRepositoryImplementation(apiClient: apiClient)
    }()
    
    lazy var fetchCoinsUseCase: FetchCoinsUseCase = {
        FetchCoinsUseCase(repository: coinRepository)
    }()
}
