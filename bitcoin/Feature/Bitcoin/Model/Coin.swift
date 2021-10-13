//
//  Bitcoin.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-12.
//

import Foundation

struct Coin: Decodable {
    // They are constants so that no one can change them - data you recieve matches your model
    let symbol: String
    let name: String
    let price_usd: String
    let percent_change_24h: String
    let percent_change_1h: String
    let percent_change_7d: String
}

extension Coin {
    
    static let dummyData = Coin(symbol: "BTC", name: "Bitcoin", price_usd: "6465.26", percent_change_24h: "-1.27", percent_change_1h: "0.19", percent_change_7d: "-0.93")
}
