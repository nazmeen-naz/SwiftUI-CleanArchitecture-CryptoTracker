//
//  APIClient.swift
//  CryptoTracker
//
//  Created by Nazmeen on 26/02/26.
//

import Foundation

protocol APIClient {
    
    func request<T: Decodable>(url: URL) async throws -> T
    
}
