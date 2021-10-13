//
//  CoinSubView.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-13.
//

import SwiftUI

struct CoinSubView: View {
    let item: Coin
    
    var body: some View {
        VStack {
            GroupBox {
                VStack(alignment: .leading) {
                    
                    HStack {
                        AsyncImage(url: URL(string: item.image)!) { image in
                            image
                                .resizable()
                                .scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 25, height: 25)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        Text(item.symbol.uppercased())
                            .bold()
                        
                        Spacer()
                    }
                    
                    Text("\(item.current_price)$")
                        .font(.title)
                        .bold()
                    Text("High: \(String(format: "%.1f", arguments: [item.high_24h]))$")
                    Text("Low: \(String(format: "%.1f", arguments: [item.low_24h]))$")
                    Text("Change: \(String(format: "%.1f", arguments: [item.price_change_percentage_24h]))%")
                }
            }
            .padding()
            Spacer()
            
        }
        .navigationTitle(item.name)
    }
}
