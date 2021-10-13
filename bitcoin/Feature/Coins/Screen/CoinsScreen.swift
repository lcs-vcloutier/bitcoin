//
//  CoinsScreen.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-12.
//

import SwiftUI

struct CoinsScreen: View {
    var body: some View {
        NavigationView {
            List(Coin.dummyData, id: \.symbol) { item in
                CoinView(item: item)
            }
            .navigationBarTitle("Cryptos")
        }
    }
}

