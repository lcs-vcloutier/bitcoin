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
            Text("\(item.name): \(String(format: "%.1f", arguments: [item.current_price]))$")
                .font(.title)
                .bold()
         
            .font(.caption)
        }
    }
}

