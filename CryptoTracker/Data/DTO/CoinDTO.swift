//
//  CoinDTO.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

struct CoinDTO: Decodable {
    
    let id: String
    
    let name: String
    
    let symbol: String
    
    let current_price: Double
    
    let image: String
}
