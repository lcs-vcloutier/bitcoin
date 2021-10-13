//
//  Bitcoin.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-12.
//

import Foundation

// CREATING A DATA TYPE TO STORE OUR COINS
struct Coin: Decodable {
    // They are constants so that no one can change them - data you recieve matches your model
    let symbol: String
    let name: String
    let image: String
    let current_price: Float
    let price_change_percentage_24h: Float
}
