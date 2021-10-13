//
//  CoinsScreen.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-12.
//

import SwiftUI

struct CoinsScreen: View {
    // Injecting service into viewmodel
    @StateObject private var vm = CoinsViewModelImpl(service: CoinsServiceImpl())

    var body: some View {
        Group {
            if vm.coins.isEmpty {
                ProgressView()
            } else {
                NavigationView {
            List(vm.coins, id: \.symbol) { item in
                CoinView(item: item)
            }
            .navigationBarTitle("Cryptos")
            }
            }
        }
        .task {
            // get the coins when needed
            await vm.getCoins()
        }
    }
}
