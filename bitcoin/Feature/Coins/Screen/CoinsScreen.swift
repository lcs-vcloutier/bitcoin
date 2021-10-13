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
                
                
                
                List(Coin.dummyData, id: \.symbol) { item in
                    
                    GroupBox {
                        VStack (alignment: .leading) {
                            if id == 1 {
                            Text("the top crypto 🚀 🚀 🚀")
                                .font(.title2)
                            }
                            else {
                                Text("another crypto")
                                    .font(.title2)
                            }
                            
                            Text("\(item.name): \(item.price_usd)$")
                                .font(.title)
                                .bold()
                            HStack {
                                Text("recently: \(item.percent_change_1h)%")
                                Spacer()
                                Text("yesterday: \(item.percent_change_24h)%")
                                Spacer()
                                Text("a week: \(item.percent_change_7d)%")
                            }
                            .font(.caption)
                        }
                    }
                }
                
            }
            .navigationBarTitle("all the coins")
        }
    }
}

