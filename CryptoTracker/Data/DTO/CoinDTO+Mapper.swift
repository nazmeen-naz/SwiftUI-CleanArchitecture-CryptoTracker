//
//  CoinDTO+Mapper.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

extension CoinDTO {
    
    func toDomain() -> Coin {
        
        Coin(
            id: id,
            name: name,
            symbol: symbol,
            price: current_price,
            image: image
        )
        
    }
}
