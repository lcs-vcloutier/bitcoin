//
//  CoinsService.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-13.
//

import Foundation

//PULLING THE COINS
protocol CoinsService {
    func fetchCoins() async throws -> [Coin]
}
 
final class CoinsServiceImpl: CoinsService {
    func fetchCoins() async throws -> [Coin] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseURL.appending("/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=1h%2C%2024h%2C%207d")) // appending stuff to api constant
        let (data, _) = try await urlSession.data(from: url!) // interact with api
        return try JSONDecoder().decode([Coin].self, from: data) // if successful decode data if fails throw an error
    }
}
