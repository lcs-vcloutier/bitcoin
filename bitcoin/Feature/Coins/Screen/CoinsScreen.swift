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
            VStack {
                
                GroupBox {
                    VStack (alignment: .leading) {
                        Text("the top crypto 🚀 🚀 🚀 ")
                            .font(.title2)
                        
                        Text("\(Coin.dummyData.first!.name): \(Coin.dummyData.first!.price_usd)$")
                            .font(.title)
                            .bold()
                        HStack {
                            Text("1 Hour: \(Coin.dummyData.first!.percent_change_1h)%")
                            Spacer()
                            Text("24 Hours: \(Coin.dummyData.first!.percent_change_24h)%")
                            Spacer()
                            Text("7 Days: \(Coin.dummyData.first!.percent_change_7d)%")
                        }
                        .font(.caption)
                    }
                }
                .padding()
                
                    List(Coin.dummyData, id: \.symbol) { item in
                        
                        VStack (alignment: .leading) {

                        HStack {
                            Text(item.symbol)
                                .bold()
                            Spacer()
                            Text("\(item.price_usd)$")
                        }
                        .font(.title)
                            HStack {
                                Text("1 Hour: \(item.percent_change_1h)%")
                                Spacer()
                                Text("24 Hours: \(item.percent_change_24h)%")
                                Spacer()
                                Text("7 Days: \(item.percent_change_7d)%")
                            }
                            .font(.caption)
                        }
                    }
                
            }
            .navigationBarTitle("all the coins")
        }
    }
}

