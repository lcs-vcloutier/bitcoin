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
    @State private var searchText = ""
    
    var body: some View {
        Group {
            if vm.coins.isEmpty {
                ProgressView()
            } else {
                NavigationView {
                    List {
                        ForEach(searchResults, id: \.name) { item in
                            
                            NavigationLink(destination: CoinSubView(item: item)) {
                                CoinView(item: item)
                            }
                        }
                    }
                    .searchable(text: $searchText)
                    .navigationBarTitle("Cryptos")
                }
            }
            
        }
        .task {
            // get the coins when needed
            await vm.getCoins()
        }
    }
    var searchResults: [Coin] {
        if searchText.isEmpty {
            return vm.coins
        } else {
            return vm.coins.filter { $0.name.contains(searchText) }
        }
    }
}
