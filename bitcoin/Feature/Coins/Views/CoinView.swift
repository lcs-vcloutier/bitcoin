//
//  CoinView.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-13.
//

import SwiftUI

struct CoinView: View {
    
    let item: Coin
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("\(item.name): \(item.price_usd)$")
                .font(.title)
                .bold()
            HStack {
                Text("1 Hour: \(item.percent_change_1h)%")
                Spacer()
                Text("24 Hours: \(item.percent_change_24h)%")
                Spacer()
                Text("1 Week: \(item.percent_change_7d)%")
            }
            .font(.caption)
        }
    }
}

